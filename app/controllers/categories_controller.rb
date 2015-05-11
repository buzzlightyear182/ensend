class CategoriesController < ApplicationController
  # before_action :authenticate_user!, only: [:show]

  # GET /categories/:id
  def show
    @products = Category.find(params[:id]).products
    @title = Category.find(params[:id]).name
    render 'products/index'
  end

end
