class CreateElements < ActiveRecord::Migration[5.2]
  def change
    create_table :elements do |t|
      t.text :inner_text
      t.string :tag
      t.string :src
    end
  end
end
