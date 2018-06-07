class CreateHeaders < ActiveRecord::Migration[5.2]
  def change
    create_table :headers do |t|
      t.references :site
      t.string :inner_text
    end
  end
end
