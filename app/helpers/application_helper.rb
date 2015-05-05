module ApplicationHelper

  def flash_message
    if notice
      render 'components/flash_message', object: notice
    end
  end

  def navigation_switch
    if user_signed_in? && current_user.roles == "admin"
      render 'components/admin_nav'
    elsif user_signed_in?
      render 'components/user_nav'
    else
      return
    end
  end

  def show_errors_of(object)
    if object.errors.any?
      render 'components/form_error', object: object
    end
  end
  
  def resource_name
    :user
  end

  def resource
    @resource ||= User.new
  end

  def devise_mapping
    @devise_mapping ||= Devise.mappings[:user]
  end

end
