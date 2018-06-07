class CreateHeaderProperties < ActiveRecord::Migration[5.2]
  def change
    create_table :header_properties do |t|
      t.references :header
      t.string :border_bottom_color
      t.string :border_bottom_style
      t.integer :border_bottom_width
      t.string :background_color
      t.string :color
    end
  end
end
