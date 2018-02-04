class ProductsController < ApplicationController
  def all
    products = Product.all
    render json: products, status: 201
  end

  def get
    product = Product.find(params[:id])
    render json: product, status: 200
  end

  def index
    @products = Product.all
  end

  def show
    @product_id = params[:id]
  end
end
