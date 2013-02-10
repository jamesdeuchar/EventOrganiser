class AddColsToExhibitors < ActiveRecord::Migration
  def self.up
    add_column :exhibitors, :category, :string
    add_column :exhibitors, :rating, :string
    add_column :exhibitors, :contact_first_name, :string
    add_column :exhibitors, :contact_last_name, :string
    add_column :exhibitors, :contact_phone_1, :string
    add_column :exhibitors, :contact_phone_1_type, :string
    add_column :exhibitors, :contact_phone_2, :string
    add_column :exhibitors, :contact_phone_2_type, :string
    add_column :exhibitors, :address_1, :string
    add_column :exhibitors, :address_2, :string
    add_column :exhibitors, :address_3, :string
    add_column :exhibitors, :town, :string
    add_column :exhibitors, :county, :string
    add_column :exhibitors, :post_code, :string
  end

  def self.down
  end
end
