class Product < ActiveRecord::Base
  belongs_to :category
  has_and_belongs_to_many :tags, join_table: :products_and_tags

  validates :title, presence: true, uniqueness: true

end
