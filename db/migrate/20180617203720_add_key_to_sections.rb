class AddKeyToSections < ActiveRecord::Migration[5.2]
  def change
    add_column :sections, :key, :string
  end
end
