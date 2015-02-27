class Product < ActiveRecord::Base
  belongs_to :vendor
  has_many :product_options
  has_many :orders
  
  has_many :categorized_products
  has_many :categories, :through => :categorized_products

  has_many :carted_products
  has_many :orders, :through => :carted_products

  validates :title, :presence => true

  def sale_message
    if price > 15
      return "On sale!"
    else
      return "Discounted item!"
    end
  end

  def tax
    return price * 0.09
  end

  def total
    return price + tax
  end

  # def title
  # end

  # def category
  # end

  # def price
  #   #pulls price from db
  # end
end
