class ChangeHomePageColumns < ActiveRecord::Migration
  def self.up
    remove_column :homes, :link, :string
    remove_column :homes, :description, :string
    add_column :homes, :key, :string
    add_column :homes, :value, :string
  end

  def self.down
    remove_column :homes, :key
    remove_column :homes, :value
  end
end
