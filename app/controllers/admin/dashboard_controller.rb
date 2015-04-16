class Admin::DashboardController < ApplicationController
  # include SidebarList
  # before_action :set_list
  before_action :authenticate_user!, only: [:show]

  def show
    @dashboard = Dashboard.new current_user
  end
end
