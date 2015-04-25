module ProductsHelper

  def check_links_of product
    unless product.links.empty?
      render partial: 'product_link', object: product
    end
  end

  def check_tabs_of product
    unless product.tab_contents.empty?
      render partial: 'product_tab', object: product
    end
  end
end
