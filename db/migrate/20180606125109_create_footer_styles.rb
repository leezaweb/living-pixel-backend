class CreateFooterStyles < ActiveRecord::Migration[5.2]
  def change
    create_table :footer_styles do |t|
      t.references :footer
      t.string :border_top_color
      t.string :border_top_style
      t.integer :border_top_width
      t.string :background_color
      t.string :color
    end
  end
end
