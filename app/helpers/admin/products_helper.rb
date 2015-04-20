module Admin::ProductsHelper

  def link_to_add_fields(name, f, association)
    new_object = f.object.send(association).klass.new
    id = new_object.object_id
    fields = f.fields_for(association, new_object, child_index: id) do |builder|
      render(association.to_s.singularize + "_fields", f: builder)
    end
    link_to(name, '#', :class => "add_fields btn btn-primary col-xs-12", data: {id: id, fields: fields.gsub("\n", "")})
  end

  def edit_product?
    if user_signed_in? && current_user.roles == "admin"
      content_tag :div, :class => 'header col-xs-12' do
        link_to "Edit this product", edit_admin_product_path(@product)
      end
    end
  end

end
