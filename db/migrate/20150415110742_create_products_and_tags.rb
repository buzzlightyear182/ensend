class CreateProductsAndTags < ActiveRecord::Migration
  def change
    create_table :products_and_tags, id: false do |t|
      t.belongs_to :product, index: true
      t.belongs_to :tag, index: true
    end
  end
end