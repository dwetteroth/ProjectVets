class CreateGlobals < ActiveRecord::Migration
  def self.up
    create_table :globals do |t|
      t.string :title
      t.string :keyword
      
      t.timestamps
    end
  end

  def self.down
    drop_table :globals
  end
end