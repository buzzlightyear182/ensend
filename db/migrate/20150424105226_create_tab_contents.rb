class CreateTabContents < ActiveRecord::Migration
  def change
    create_table :tab_contents do |t|
      t.belongs_to :product
      t.text :data, null: false
      t.references :tab, null: false
      t.timestamps null: false
    end
  end
end
