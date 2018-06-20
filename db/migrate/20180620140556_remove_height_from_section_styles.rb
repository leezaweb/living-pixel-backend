class RemoveHeightFromSectionStyles < ActiveRecord::Migration[5.2]
  def change
    remove_column :section_styles, :height, :integer
  end
end
