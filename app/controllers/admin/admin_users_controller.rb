class Admin::AdminUsersController < ApplicationController

  def index
    @users = User.where(roles: "admin")
  end

  def create
    @user = User.find_by_email(params[:email])
    @user.update_attributes(roles: "admin")
    if @user.save
       redirect_to admin_list_path, notice: "User was added as admin"
    else
      render 'index', error: "No user found, please check email input."
    end
  end

  def update
    @user = User.find(params[:id])
    @user.update_attributes(roles: "")
    if @user.save
       redirect_to admin_list_path, notice: "User was removed as admin"
    else
      render 'index', error: "There was an error with your request. Please try later."
    end
  end

end
