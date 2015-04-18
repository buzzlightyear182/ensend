class LinkType < ActiveRecord::Base

  has_many :links

  validates :name, presence: true, uniqueness: true

end
