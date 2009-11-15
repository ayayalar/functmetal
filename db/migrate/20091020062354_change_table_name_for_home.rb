class ChangeTableNameForHome < ActiveRecord::Migration
  def self.up
    rename_table :homes, :home
  end

  def self.down
    rename_table :home, :homes
  end
end
