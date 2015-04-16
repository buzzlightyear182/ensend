class AddLinksToProducts < ActiveRecord::Migration
  def change
    add_column :products, :visit_link, :string
    add_column :products, :apply_link, :string
    add_column :products, :with_affiliate?, :boolean
  end
end
