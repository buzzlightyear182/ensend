module ProductsHelper

  def check_links_of product
    unless product.links.empty?
      content_tag :p do
        link_to 'Apply now', visit_url_path(product.homepage.counter.id), method: 'put', :class => 'btn btn-xl btn-primary'
      end
    end
  end
end
# <p>Apply counter: <%= @product.homepage.counter.count %> - <%= @product.affiliate_link.url %></p>
#       <p>Visit website: <%= @product.affiliate_link.counter.count %> - <%= @product.homepage.url %></>
