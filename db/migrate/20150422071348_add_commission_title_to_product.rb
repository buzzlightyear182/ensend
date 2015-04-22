class AddCommissionTitleToProduct < ActiveRecord::Migration
  def change
    add_column :products, :commission_title, :text
  end
end
