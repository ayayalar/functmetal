class AddColumnToHome < ActiveRecord::Migration
  
  create_table :homes, :force => true do |t|
    t.timestamps
  end
  
  def self.up
    add_column :homes, :link, :string
    add_column :homes, :description, :string
  end

  def self.down
    drop_table :homes
    remove_column :homes, :description
    remove_column :homes, :link
  end
end
