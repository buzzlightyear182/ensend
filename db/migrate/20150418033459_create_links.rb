class CreateLinks < ActiveRecord::Migration
  def change
    create_table :links do |t|
      t.belongs_to :product
      t.string :url, null: false
      t.references :link_type, null: false
      t.timestamps null: false
    end
  end
end
