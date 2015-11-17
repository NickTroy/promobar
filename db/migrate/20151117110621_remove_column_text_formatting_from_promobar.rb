class RemoveColumnTextFormattingFromPromobar < ActiveRecord::Migration
  def change
    remove_column :promobars, :text_formatting, :integer
  end
end
