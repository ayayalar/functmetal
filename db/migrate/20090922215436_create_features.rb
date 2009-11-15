class CreateFeatures < ActiveRecord::Migration
  def self.up
    create_table :features do |t|
      t.string :title
      t.text :description
      t.text :code
      t.integer :entity_id

      t.timestamps
    end
  end

  def self.down
    drop_table :features
  end
end
