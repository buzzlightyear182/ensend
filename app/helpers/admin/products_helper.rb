module Admin::ProductsHelper

  def edit_product?
    if user_signed_in? && current_user.roles == "admin"
      content_tag :div, :class => 'header col-xs-12' do
        link_to "Edit this product", edit_admin_product_path(@product)
      end
    end
  end

  def reset_counters product
    unless product.links.empty?
      render partial: 'statistic', object: product
    end
  end

  def check_if_zero counter
    unless counter.impressionist_count == 0
      link_to "Reset", reset_path(counter.id), :class => 'btn btn-danger'
    end
  end

end
