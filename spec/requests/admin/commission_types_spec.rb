require 'rails_helper'

RSpec.describe "CommissionTypes", type: :request do
  describe "GET admin/commission_types" do
    it "works! (now write some real specs)" do
      get admin_commission_types_path
      expect(response).to have_http_status(200)
    end
  end
end
