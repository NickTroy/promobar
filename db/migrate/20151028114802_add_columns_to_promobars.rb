class AddColumnsToPromobars < ActiveRecord::Migration
  def change
    add_column :promobars, :button_text
    add_column :promobars, :button_color
    add_column :promobars, :button_hover
    add_column :promobars, :button_font
    add_column :promobars, :button_font_size
    add_column :promobars, :button_tracking
    add_column :promobars, :button_leading
    add_column :promobars, :button_font_regular
    add_column :promobars, :button_font_bold
    add_column :promobars, :button_font_italic
    add_column :promobars, :button_text_color
    add_column :promobars, :button_text_animation
    add_column :promobars, :size
    add_column :promobars, :alignment
    add_column :promobars, :display_delay
    add_column :promobars, :url_link
    add_column :promobars, :url_link_blank
    add_column :promobars, :enable_on_mobile
  end
end
