class AddRankingToProduct < ActiveRecord::Migration
  def change
    add_column :products, :ranking, :decimal, default: 0, precision: 9, scale: 3
  end
end
