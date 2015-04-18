class Link < ActiveRecord::Base
  belongs_to :product
  belongs_to :link_type

  validates :url, presence: true, uniqueness: { case_sensitive: false }
  validates :link_type, presence: true

  scope :homepage, -> {where(link_type_id: 1)}
  scope :affiliate, -> {where(link_type_id: 2)}

end
