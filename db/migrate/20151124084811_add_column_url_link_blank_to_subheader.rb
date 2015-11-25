class AddColumnUrlLinkBlankToSubheader < ActiveRecord::Migration
  def change
    add_column :subheaders, :url_link_blank, :integer
  end
end
