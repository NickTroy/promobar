class AddColumnPromobarLinkToPromobars < ActiveRecord::Migration
  def change
    add_column :promobars, :promobar_link, :string
  end
end
