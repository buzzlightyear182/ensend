class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
    def after_sign_in_path_for(resource)
    if user_signed_in? && current_user.roles == "admin"
      admin_dashboard_path current_user
    else
      products_path
    end
  end
  
  def check_page_count product
    if current_user.roles == "admin"
      return
    else
      impressionist(product, :unique => [:session_hash])
    end
  end
end
