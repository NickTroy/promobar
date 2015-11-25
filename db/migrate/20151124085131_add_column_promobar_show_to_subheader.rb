class AddColumnPromobarShowToSubheader < ActiveRecord::Migration
  def change
    add_column :subheaders, :promobar_show, :boolean
  end
end
