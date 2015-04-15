require 'rails_helper'

RSpec.describe Tag, type: :model do

 it { should belong_to(:category) }

  before :each do
    Category.destroy_all
    Tag.destroy_all
    create(:tag)
  end

  describe "will only be created" do

    it "if no record exists" do
      new_tag = create(:tag, name: "I am another tag")
      expect(Tag.count).to eq(2)
      expect(new_tag).to eq(Tag.last)
    end

  end

  describe "will not be created" do

    it "if record exists" do
      new_tag = build(:tag, name: "I am a tag")
      expect(Tag.count).to eq(1)
    end

    it "if name is blank" do
      new_tag = build(:tag, name: "")
      expect(Tag.count).to eq(1)
    end

  end
end
