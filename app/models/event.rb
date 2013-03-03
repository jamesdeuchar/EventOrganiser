class Event < ActiveRecord::Base

  validates_presence_of :name,
                        :date,
                        :organiser

  validates_uniqueness_of :name

  has_attached_file :logo

end
