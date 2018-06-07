class CreateElementProperties < ActiveRecord::Migration[5.2]
  def change
    create_table :element_properties do |t|
      t.references :element
      t.string :border_top_color
      t.string :border_right_color
      t.string :border_bottom_color
      t.string :border_left_color
      t.string :border_top_style
      t.string :border_right_style
      t.string :border_bottom_style
      t.string :border_left_style
      t.integer :border_top_width
      t.integer :border_right_width
      t.integer :border_bottom_width
      t.integer :border_left_width
      t.integer :border_top_left_radius
      t.integer :border_top_right_radius
      t.integer :border_bottom_left_radius
      t.integer :border_bottom_right_radius
      t.string :width
      t.string :height
      t.string :filter
      t.string :object_fit
      t.string :text_align
      t.string :color
      t.integer :column_count
      t.integer :column_gap
      t.integer :column_rule_width
      t.string :column_rule_style
      t.string :column_rule_color
      t.integer :grid_column_start
      t.integer :grid_column_end
      t.integer :grid_row_start
      t.integer :grid_row_end
      t.string :background_image
      t.string :background_repeat
      t.string :background_attachment
      t.string :background_size
      t.string :background_position
    end
  end
end
