class Link < ActiveRecord::Base
  belongs_to :product
  belongs_to :link_type

  validates :url, presence: true, uniqueness: { case_sensitive: false }
  validates :link_type, presence: true
  validates :product, presence: true

end
