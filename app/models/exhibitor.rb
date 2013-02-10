class Exhibitor < ActiveRecord::Base

  validates_presence_of :company_name,
                        :contact_first_name,
                        :contact_last_name


  def contact_name
     "#{self.contact_first_name} #{self.contact_last_name}"
  end

end
