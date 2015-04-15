class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.string :title, null: false
      t.string :subtitle
      t.text :short_description
      t.text :content
      t.belongs_to :category, null: false
      t.timestamps null: false
    end
  end
end
