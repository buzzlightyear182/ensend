class Product < ActiveRecord::Base
  has_and_belongs_to_many :tags, join_table: :products_and_tags
  has_many :categories, -> { distinct }, through: :tags

  has_and_belongs_to_many :commission_types, join_table: :products_and_commission_types

  validates :title, presence: true, uniqueness: true

end
