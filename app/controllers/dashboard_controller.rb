class DashboardController < ApplicationController
  # include SidebarList
  # before_action :set_list
  before_action :authenticate_user!, only: [:show]

  def static
    render 'dashboard/static'
  end

  def show
    @dashboard = Dashboard.new current_user
  end
end
