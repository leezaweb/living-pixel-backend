class CreateSectionProperties < ActiveRecord::Migration[5.2]
  def change
    create_table :section_properties do |t|
      t.references :section
      t.string :border_top_color
      t.string :border_bottom_color
      t.string :border_top_style
      t.string :border_bottom_style
      t.integer :border_top_width
      t.integer :border_bottom_width
      t.integer :border_top_left_radius
      t.integer :border_top_right_radius
      t.integer :border_bottom_left_radius
      t.integer :border_bottom_right_radius
      t.string :background_color
      t.string :background_image
      t.string :background_repeat
      t.string :background_attachment
      t.string :background_size
      t.string :background_position
      t.string :display
      t.string :justify_content
      t.string :align_content
    end
  end
end
