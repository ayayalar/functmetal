class ChangeColumnDataTypeForDescriptionOfFeature < ActiveRecord::Migration
  def self.up
    change_column :features, :description, :text
  end

  def self.down
    change_column :features, :description, :string
  end
end
