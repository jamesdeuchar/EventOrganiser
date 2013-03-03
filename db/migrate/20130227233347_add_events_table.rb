class AddEventsTable < ActiveRecord::Migration
  def self.up
    create_table :events do |t|
      t.string :name
      t.datetime :date
      t.string :venue
      t.string :organiser
      t.has_attached_file :logo
      t.string :created_by
      t.string :updated_by
      t.timestamps
    end
  end

  def self.down
    drop_table :events
    drop_attached_file :events, :logo
  end
end
