class Exhibitor < ActiveRecord::Base

  belongs_to :exhibitor_category

  validates_presence_of :company_name,
                        :contact_first_name,
                        :contact_last_name,
                        :contact_email,
                        :contact_phone_1

  EmailRegexp = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  validates_format_of     :contact_email, :with => EmailRegexp
  validates_uniqueness_of :contact_email

  def contact_name
     "#{self.contact_first_name} #{self.contact_last_name}"
  end

end
