require 'rails_helper'

RSpec.describe CommissionType, type: :model do

  before :each do
    CommissionType.destroy_all
    create(:commission_type)
  end

  describe "will only be created" do

    it "if no record exists" do
      new_commission_type = create(:commission_type, name: "I am another commission_type")
      expect(CommissionType.count).to eq(2)
      expect(new_commission_type).to eq(CommissionType.last)
    end

  end

  describe "will not be created" do

    it "if record exists" do
      new_commission_type = build(:commission_type, name: "Discounted")
      expect(new_commission_type).to be_invalid
      expect(CommissionType.count).to eq(1)
    end

    it "if name is blank" do
      new_commission_type = build(:commission_type, name: "")
      expect(new_commission_type).to be_invalid
      expect(CommissionType.count).to eq(1)
    end

  end

end
