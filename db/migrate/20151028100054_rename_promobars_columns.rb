class RenamePromobarsColumns < ActiveRecord::Migration
  def change
    rename_column :promobars, :bar_type, :type
    rename_column :promobars, :bar_text, :text
    rename_column :promobars, :bar_font, :font
    rename_column :promobars, :bar_font_size, :font_size
    rename_column :promobars, :bar_tracking, :tracking
    rename_column :promobars, :bar_leading, :leading
    rename_column :promobars, :bar_font_regular, :font_regular
    rename_column :promobars, :bar_font_bold, :font_bold
    rename_column :promobars, :bar_font_italic, :font_italic
    rename_column :promobars, :bar_text_color, :text_color
    rename_column :promobars, :bar_background_color, :background_color
    rename_column :promobars, :bar_background_opacity, :background_opacity
  end
end
