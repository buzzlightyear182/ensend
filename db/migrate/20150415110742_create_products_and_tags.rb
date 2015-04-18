class CreateProductsAndTags < ActiveRecord::Migration
  def change
    create_table :products_and_tags, id: false do |t|
      t.belongs_to :product, index: true
      t.belongs_to :tag, index: true
    end

    add_index(:products_and_tags, [:product_id, :tag_id], :unique => true)
  end
end
