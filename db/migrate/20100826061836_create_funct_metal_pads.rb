class CreateFunctMetalPads < ActiveRecord::Migration
  def self.up
    create_table :funct_metal_pads do |t|

      t.timestamps
    end
  end

  def self.down
    drop_table :funct_metal_pads
  end
end
