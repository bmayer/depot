class AddVehicleInfo < ActiveRecord::Migration
  def self.up
    add_column :products, :model_year, :string
    add_column :products, :engine, :string
    add_column :products, :transmission, :string
  end

  def self.down
    remove_column :products, :model_year
    remove_column :products, :engine
    remove_column :products, :transmission
  end
end
