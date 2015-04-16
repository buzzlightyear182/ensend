class Category < ActiveRecord::Base
  has_many :tags
  has_many :products, -> { distinct }, through: :tags
  validates :name, presence: true, uniqueness: true
end
