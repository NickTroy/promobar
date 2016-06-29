class AddColumnShopDomainToLocks < ActiveRecord::Migration
  def change
    add_column :locks, :shop_domain, :string
  end
end
