class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.string :title, null: false
      t.string :subtitle
      t.text :short_description
      t.text :content
      t.boolean :with_affiliate?, default: false
      t.timestamps null: false
    end
  end
end
