class CreateExhibitors < ActiveRecord::Migration
  def self.up
    create_table :exhibitors do |t|
      t.string :company_name
      t.string :company_website
      t.string :source
      t.string :created_by
      t.string :updated_by

      t.timestamps
    end
  end

  def self.down
    drop_table :exhibitors
  end
end
