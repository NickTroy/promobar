class CreateSubheaders < ActiveRecord::Migration
  def change
    create_table :subheaders do |t|
      t.string :text
      t.string :background_color
      t.references :promobar, index: true

      t.timestamps
    end
  end
end
