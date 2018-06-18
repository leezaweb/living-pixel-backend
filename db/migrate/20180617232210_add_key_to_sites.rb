class AddKeyToSites < ActiveRecord::Migration[5.2]
  def change
    add_column :sites, :key, :string
  end
end
