class TagsController < ApplicationController
  # before_action :authenticate_user!, only: [:show]

  # GET /tags/:id
  def show
    @products = Tag.find(params[:id]).products
    @title = Tag.find(params[:id]).name
    render 'products/index'
  end

end
