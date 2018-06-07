class CreateBodyProperties < ActiveRecord::Migration[5.2]
  def change
    create_table :body_properties do |t|
      t.references :body
      t.string :background_color
      t.string :background_image
      t.string :background_repeat
      t.string :background_attachment
      t.string :background_size
      t.string :background_position
    end
  end
end
