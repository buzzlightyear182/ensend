class CommissionType < ActiveRecord::Base
  validates :name, presence: true, uniqueness: true
end
