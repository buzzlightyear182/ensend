class CreateCommissionTypes < ActiveRecord::Migration
  def change
    create_table :commission_types do |t|
      t.string :name, null: false
      t.string :label
      t.string :icon
      t.timestamps null: false
    end
  end
end
