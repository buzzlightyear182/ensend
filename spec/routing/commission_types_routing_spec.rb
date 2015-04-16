require "rails_helper"

RSpec.describe CommissionTypesController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/commission_types").to route_to("commission_types#index")
    end

    it "routes to #new" do
      expect(:get => "/commission_types/new").to route_to("commission_types#new")
    end

    it "routes to #show" do
      expect(:get => "/commission_types/1").to route_to("commission_types#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/commission_types/1/edit").to route_to("commission_types#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/commission_types").to route_to("commission_types#create")
    end

    it "routes to #update" do
      expect(:put => "/commission_types/1").to route_to("commission_types#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/commission_types/1").to route_to("commission_types#destroy", :id => "1")
    end

  end
end
