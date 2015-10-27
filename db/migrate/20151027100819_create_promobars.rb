class CreatePromobars < ActiveRecord::Migration
  def change
    create_table :promobars do |t|
      t.integer :bar_type
      t.string :bar_text
      t.string :bar_font
      t.integer :bar_font_size
      t.integer :bar_text_formatting
      t.integer :bar_tracking
      t.integer :bar_leading
      t.string :bar_text_color
      t.string :bar_background_color
      t.integer :bar_background_opacity

      t.timestamps
    end
  end
end
