require "rails_helper"

RSpec.describe Admin::CommissionTypesController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "admin/commission_types").to route_to("admin/commission_types#index")
    end

    it "routes to #new" do
      expect(:get => "admin/commission_types/new").to route_to("admin/commission_types#new")
    end

    it "routes to #show" do
      expect(:get => "admin/commission_types/1").to route_to("admin/commission_types#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "admin/commission_types/1/edit").to route_to("admin/commission_types#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "admin/commission_types").to route_to("admin/commission_types#create")
    end

    it "routes to #update" do
      expect(:put => "admin/commission_types/1").to route_to("admin/commission_types#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "admin/commission_types/1").to route_to("admin/commission_types#destroy", :id => "1")
    end

  end
end
