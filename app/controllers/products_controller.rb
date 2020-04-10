class ProductsController < ApplicationController
  def index
  end

  def add
    # byebug
    product = params[:product]
    if product
      cart << product
      redirect_to root_path
    else
      notice[:info] = "An error occur"
    end
  end
end
