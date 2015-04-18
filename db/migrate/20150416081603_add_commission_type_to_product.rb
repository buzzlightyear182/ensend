class AddCommissionTypeToProduct < ActiveRecord::Migration
  def change
    create_table :products_and_commission_types, id: false do |t|
      t.belongs_to :product, index: true
      t.belongs_to :commission_type, index: true
    end
    # add_index(:products_and_commission_types, [:product_id, :commission_type_id], :unique => true)
  end
end
