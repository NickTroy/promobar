class AddColumnEnableOnMobileToSubheader < ActiveRecord::Migration
  def change
    add_column :subheaders, :enable_on_mobile, :integer
  end
end
