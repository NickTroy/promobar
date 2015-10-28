class AddColumnsToPromobars < ActiveRecord::Migration
  def change
    add_column :promobars, :button_text, :string
    add_column :promobars, :button_color, :string
    add_column :promobars, :button_hover, :string
    add_column :promobars, :button_font, :string
    add_column :promobars, :button_font_size, :integer
    add_column :promobars, :button_tracking, :integer
    add_column :promobars, :button_leading, :integer
    add_column :promobars, :button_font_regular, :integer
    add_column :promobars, :button_font_bold, :integer
    add_column :promobars, :button_font_italic, :integer
    add_column :promobars, :button_text_color, :string
    add_column :promobars, :button_text_animation, :integer
    add_column :promobars, :size, :integer
    add_column :promobars, :alignment, :integer
    add_column :promobars, :display_delay, :integer
    add_column :promobars, :url_link, :string
    add_column :promobars, :url_link_blank, :integer
    add_column :promobars, :enable_on_mobile, :integer
  end
end
