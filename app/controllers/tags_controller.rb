class TagsController < ApplicationController
  before_action :authenticate_user!, only: [:show]

  # GET /tags/:id
  def show
    @products = Tag.find(params[:id]).products
    render 'products/index'
  end

end
