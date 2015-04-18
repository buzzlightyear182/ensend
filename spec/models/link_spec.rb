require 'rails_helper'

RSpec.describe Link, type: :model do
  it { should belong_to(:product) }

  it { should validate_presence_of(:url) }
  it { should validate_presence_of(:link_type) }
  it { should validate_presence_of(:product) }

  it { should validate_uniqueness_of(:url) }

end
