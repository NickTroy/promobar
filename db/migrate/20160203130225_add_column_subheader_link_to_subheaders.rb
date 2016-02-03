class AddColumnSubheaderLinkToSubheaders < ActiveRecord::Migration
  def change
    add_column :subheaders, :subheader_link, :string
  end
end
