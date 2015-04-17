module ApplicationHelper

  def flash_message
    if notice
      render 'components/flash_message', object: notice
    end
  end
end
