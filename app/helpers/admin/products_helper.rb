module Admin::ProductsHelper

  def edit_product?
    if user_signed_in? && current_user.roles == "admin"
      content_tag :div, :class => 'header col-xs-12' do
        link_to "Edit this product", edit_admin_product_path(@product)
      end
    end
  end

end
