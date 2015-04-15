require 'rails_helper'

RSpec.describe Tag, type: :model do

 it { should belong_to(:category) }

  before :each do
    Category.destroy_all
    Tag.destroy_all
  end

  let(:tag){ create(:tag) }

  describe "will only be created" do

    it "if no record exists" do
      new_tag = create(:tag, name: "I am another tag", category_id: tag.category_id)
      expect(new_tag).to eq(Tag.last)
      expect(Tag.count).to eq(2)
    end

  end

  describe "will not be created" do

    it "if record exists" do
      new_tag = build(:tag, name: "I am a tag", category_id: tag.category_id)
      expect(new_tag).to be_invalid
      expect(Tag.count).to eq(1)
    end

    it "if name is blank" do
      new_tag = build(:tag, name: "", category_id: tag.category_id)
      expect(new_tag).to be_invalid
      expect(Tag.count).to eq(1)
    end

  end
end
