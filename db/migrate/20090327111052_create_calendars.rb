class CreateCalendars < ActiveRecord::Migration

  # for future usage
  def self.up
    create_table :calendars do |t|
      t.time :time
      t.integer :task_id 
      t.timestamps
    end
  end

  def self.down
    drop_table :calendars
  end
end
