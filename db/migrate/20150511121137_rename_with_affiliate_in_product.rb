class RenameWithAffiliateInProduct < ActiveRecord::Migration
  def change
    rename_column :products, :with_affiliate?, :with_affiliate
  end
end
