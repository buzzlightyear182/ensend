require 'rails_helper'

RSpec.describe LinkType, type: :model do
  it { should validate_presence_of(:name) }
  it { should validate_uniqueness_of(:name) }
end
