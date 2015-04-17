require 'rails_helper'

RSpec.describe Product, type: :model do

  it { should have_attached_file(:logo) }
  it { should validate_attachment_content_type(:logo).
                allowing('image/png', 'image/gif').
                rejecting('text/plain', 'text/xml') }

  it { should have_attached_file(:screenshot) }
  it { should validate_attachment_content_type(:screenshot).
                allowing('image/png', 'image/gif').
                rejecting('text/plain', 'text/xml') }

  it { should validate_presence_of(:title) }
  it { should validate_uniqueness_of(:title) }

  it { should have_and_belong_to_many(:tags) }
  it { should have_many(:categories) }
  it { should have_and_belong_to_many(:commission_types) }

end
