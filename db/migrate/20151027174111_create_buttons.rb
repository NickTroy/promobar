class CreateButtons < ActiveRecord::Migration
  def change
    create_table :buttons do |t|
      t.string :text
      t.integer :shape
      t.string :color
      t.string :hover
      t.integer :font
      t.integer :size
      t.integer :tracking
      t.integer :leading
      t.integer :font_regular
      t.integer :font_bold
      t.integer :font_italic
      t.string :text_color
      t.integer :text_animation
      t.integer :bar_size
      t.integer :bar_position
      t.integer :bar_aligment
      t.integer :display_delay
      t.string :url_link
      t.integer :blank
      t.integer :enable_on_mobile

      t.timestamps
    end
  end
end
