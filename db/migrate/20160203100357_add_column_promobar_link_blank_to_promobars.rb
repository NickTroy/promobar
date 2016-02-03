class AddColumnPromobarLinkBlankToPromobars < ActiveRecord::Migration
  def change
    add_column :promobars, :promobar_link_blank, :integer
  end
end
