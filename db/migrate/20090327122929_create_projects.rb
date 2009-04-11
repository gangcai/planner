class CreateProjects < ActiveRecord::Migration
  def self.up
    create_table :projects do |t|
      t.string :name ,:size=>20
      t.string :aim,:size=>200
      t.string :description,:size=>500
      t.boolean :state,:default=>false
      t.boolean :future,:default=>false
      t.boolean :importance,:default=>false #if true, it is essential work
      t.date  :begtime ,:default=>Time.now #begin of the project
      t.date :endtime ,:default=>Time.now #end of the project
      t.timestamps
    end
  end

  def self.down
    drop_table :projects
  end
  
end
