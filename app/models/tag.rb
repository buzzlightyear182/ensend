class Tag < ActiveRecord::Base
  belongs_to :category
  has_and_belongs_to_many :products, join_table: :products_and_tags

  validates :name, presence: true, uniqueness: true
  validates :category, presence: true
end
