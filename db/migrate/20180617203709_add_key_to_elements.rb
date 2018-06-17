class AddKeyToElements < ActiveRecord::Migration[5.2]
  def change
    add_column :elements, :key, :string
  end
end
