class Admin::CountersController < ApplicationController

  def update
    @count = Counter.find(params[:id])
    check_page_count @count
    redirect_to @count.link.url
  end

end
