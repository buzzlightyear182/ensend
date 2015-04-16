class AddImagesToProducts < ActiveRecord::Migration
  def self.up
    add_attachment :products, :screenshot
    add_attachment :products, :logo
  end

  def self.down
    remove_attachment :products, :screenshot
    remove_attachment :products, :logo
  end
end
