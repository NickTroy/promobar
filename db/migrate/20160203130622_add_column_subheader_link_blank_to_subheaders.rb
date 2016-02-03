class AddColumnSubheaderLinkBlankToSubheaders < ActiveRecord::Migration
  def change
    add_column :subheaders, :subheader_link_blank, :integer
  end
end
