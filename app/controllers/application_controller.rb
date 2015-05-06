class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  def check_page_count product
    if current_user.roles == "admin"
      return
    else
      impressionist(product, :unique => [:session_hash])
    end
  end
end
