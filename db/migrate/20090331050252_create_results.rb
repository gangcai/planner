class CreateResults < ActiveRecord::Migration
  def self.up
    create_table :results do |t|
      t.string :name,:size=>100
      t.string :experience,:size=>500
      t.integer :project_id
      t.timestamps
    end
  end

  def self.down
    drop_table :results
  end
end
