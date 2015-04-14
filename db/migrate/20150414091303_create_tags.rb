class CreateTags < ActiveRecord::Migration
  def change
    create_table :tags do |t|
      t.string :name, null: false
      t.belongs_to :category
      t.timestamps null: false
    end
  end
end
