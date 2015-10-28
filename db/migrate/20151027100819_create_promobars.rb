class CreatePromobars < ActiveRecord::Migration
  def change
    create_table :promobars do |t|
      t.integer :bar_type
      t.string :text
      t.string :font
      t.integer :font_size
      t.integer :font_regular
      t.integer :font_bold
      t.integer :font_italic
      t.integer :tracking
      t.integer :leading
      t.integer :text_formatting
      t.string :text_color
      t.string :background_color
      t.integer :background_opacity

      t.timestamps
    end
  end
end
