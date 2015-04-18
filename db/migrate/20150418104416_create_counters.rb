class CreateCounters < ActiveRecord::Migration
  def change
    create_table :counters do |t|
      t.belongs_to :link, null: false
      t.integer :count
      t.timestamps null: false
    end
  end
end
