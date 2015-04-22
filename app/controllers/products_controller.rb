class ProductsController < ApplicationController
  before_action :set_product, only: [:show]
  before_action :authenticate_user!, only: [:index, :show]

  # GET /products
  # GET /products.json
  def index
    @products = Product.all
  end

  # GET /products/1
  # GET /products/1.json
  def show
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_product
      @product = Product.find(params[:id])
      check_page_count
    end

    def check_page_count
      if current_user.roles == "admin"
        return
      else
        impressionist(@product)
      end
    end

end
