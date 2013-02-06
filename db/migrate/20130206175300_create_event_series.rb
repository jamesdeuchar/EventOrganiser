class CreateEventSeries < ActiveRecord::Migration
  def self.up
    create_table :event_series do |t|
      t.string :series_name
      t.string :series_administrator

      t.timestamps
    end
  end

  def self.down
    drop_table :event_series
  end
end
