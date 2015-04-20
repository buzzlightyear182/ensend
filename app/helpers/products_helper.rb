module ProductsHelper

  def check_links_of product
    unless product.links.empty?
      render partial: 'product_link', object: product
    end
  end
end
