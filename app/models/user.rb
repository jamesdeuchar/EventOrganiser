class User < ActiveRecord::Base

  require 'bcrypt'

  attr_accessor :password
  before_save :encrypt_password
  
  validates_confirmation_of :password
  validates_presence_of :password, :on => :create
  validates_presence_of :email
  validates_uniqueness_of :email
#  validates_format_of :email,
#    :with => /^([^\s]+)((?:[-a-z0-9]\.)[a-z]{2,})$/i
  
  def encrypt_password
    if password.present?
      self.password_salt = BCrypt::Engine.generate_salt
      self.password_hash = BCrypt::Engine.hash_secret(password, password_salt)
    end
  end

  def self.authenticate(email, password)
    logger.debug "### User authenticate"
    user = find_by_email(email)
    if user && user.password_hash == BCrypt::Engine.hash_secret(password, user.password_salt)
      logger.debug "### User found & password matched"
      user
    else
      logger.debug "###  User not found and/or password didn't match"
      nil
    end
  end

end
