class Product < ActiveRecord::Base

  def self.find_products_for_sale
    find(:all, :order => 'title')
  end

  validates_presence_of :title, :description, :image_url
  validates_uniqueness_of :title
  validates_length_of :description, :in => 2..125
  validates_format_of :image_url, :with => %r{\.(gif|jpg|png)$}i, :message => 'must be a GIF, JPG, or PNG'
  validates_numericality_of :price
  validate :price_must_be_at_least_a_cent


  #New actions must go before 'protected'
  protected
    def price_must_be_at_least_a_cent
      if price.nil? || price < 0.01
        errors.add(:price, 'is less than $0.01 moron!')
      end
    end
end
