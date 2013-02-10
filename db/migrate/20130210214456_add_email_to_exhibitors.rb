class AddEmailToExhibitors < ActiveRecord::Migration
  def self.up
    add_column :exhibitors, :contact_email, :string
  end

  def self.down
  end
end
