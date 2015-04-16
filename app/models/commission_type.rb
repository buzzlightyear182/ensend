class CommissionType < ActiveRecord::Base
  has_and_belongs_to_many :products, join_table: :products_and_commission_types

  validates :name, presence: true, uniqueness: true
end
