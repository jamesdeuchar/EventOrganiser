namespace :db do

  desc "Erase and fill database"

  task :populate => :environment do

    require 'populator'
    require 'faker'
    
    [Exhibitor].each(&:delete_all)

    Exhibitor.populate 100 do |exhibitor|
      exhibitor.company_name         = Faker::Company.name
      exhibitor.company_website      = Faker::Internet.url
      exhibitor.contact_first_name   = Faker::Name.first_name
      exhibitor.contact_last_name    = Faker::Name.last_name
      exhibitor.contact_email        = Faker::Internet.email
      exhibitor.contact_phone_1      = Faker::PhoneNumber.phone_number
      exhibitor.contact_phone_1_type = '1'
      exhibitor.contact_phone_2      = Faker::PhoneNumber.phone_number
      exhibitor.contact_phone_2_type = '1'
      exhibitor.address_1            = Faker::Address.street_address
      exhibitor.address_2            = Faker::Address.street_address
      exhibitor.address_3            = Faker::Address.street_address
      exhibitor.town                 = Faker::Address.city
      exhibitor.county               = 'Surrey'
      exhibitor.post_code            = 'GU7 2AS'
      exhibitor.created_by           = 'Rake populate'
      exhibitor.updated_by           = 'Rake populate'
      
    end
    
  end
end
