class Admin::CountersController < ApplicationController

  def update
    @count = Counter.find(params[:id])
    @count.increment!(:count)
    redirect_to @count.link.url
  end

end
