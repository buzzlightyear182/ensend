require 'rails_helper'

RSpec.describe "Products", type: :request do

  let (:current_user) { create(:admin) }

  describe "GET admin/products" do
    it "works! (now write some real specs)" do
      get admin_products_path
      expect(response).to have_http_status(200)
    end
  end
end
