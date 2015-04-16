class Product < ActiveRecord::Base
  has_and_belongs_to_many :tags, join_table: :products_and_tags
  has_many :categories, -> { distinct }, through: :tags

  validates :title, presence: true, uniqueness: true

end
