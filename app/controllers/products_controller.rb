class ProductsController < ApplicationController
  def index
    #/products?search=chair

    @products = Product.all
    if params[:filter] == "discount"
      @products = @products.where("price <= ?", 5)
    end
    if params[:sort]
      @products = @products.order(params[:sort] => params[:direction])
    end
    if params[:category]
      @products = @products.where(:category => params[:category])
    end
    if params[:search]
      @products = @products.where('title LIKE ?', "%" + params[:search] + "%")
    end
  end

  def show
    @product_ids = Product.all.pluck(:id)
    if params[:id] == "random"
      @product = Product.find(@product_ids.sample)
    else
      @product = Product.find(params[:id])
    end
  end

end
