class AddColumnShopDomainToPromobars < ActiveRecord::Migration
  def change
    add_column :promobars, :shop_domain, :string
  end
end
