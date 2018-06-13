class RemoveWidthFromElementStyles < ActiveRecord::Migration[5.2]
  def change
    remove_column :element_styles, :width, :string
  end
end
