class CreateTasks < ActiveRecord::Migration
  def self.up
    create_table :tasks do |t|
      t.string :name,:size=>20
      t.string :aim,:size=>200
      t.string :description,:size=>500
      t.boolean :state,:default=>false
      t.date  :begtime #begin of the task
      t.date :endtime #end of the task
      t.integer :project_id
      t.timestamps
    end
  end

  def self.down
    drop_table :tasks
  end
end
