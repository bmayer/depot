class AddTestData < ActiveRecord::Migration
  def self.up
    Product.delete_all
    Product.create(:title => 'Fiat 131', :description => 'Abarth Tuned', :image_url => 'images/fiat-131.jpg', :price => 2500)
    Product.create(:title => 'Renault R5', :description => 'Turbo', :image_url => 'images/R5-Turbo.jpg', :price => 5500)
  end

  def self.down
    Product.delete_all
  end
end
