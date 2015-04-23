class Admin::CountersController < ApplicationController
  before_action :set_count, only: [:update, :reset]

  def update
    check_page_count @count
    redirect_to @count.link.url
  end

  def reset
    Impression.where(impressionable_type: "Counter", controller_name: "counters", impressionable_id: @count.id).destroy_all
    redirect_to edit_admin_product_path(@count.link.product)
  end

   private
    # Use callbacks to share common setup or constraints between actions.
    def set_count
      @count = Counter.find(params[:id])
    end

end
