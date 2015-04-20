module ApplicationHelper

  def flash_message
    if notice
      render 'components/flash_message', object: notice
    end
  end

  def admin_navigation
    if user_signed_in? && current_user.roles == "admin"
      render 'components/admin_nav'
    end
  end

  def show_errors_of(object)
    if object.errors.any?
      render 'components/form_error', object: object
    end
  end

end
