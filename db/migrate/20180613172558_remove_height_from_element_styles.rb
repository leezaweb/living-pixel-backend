class RemoveHeightFromElementStyles < ActiveRecord::Migration[5.2]
  def change
    remove_column :element_styles, :height, :string
  end
end
