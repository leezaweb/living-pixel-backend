class AddMinHeightToSectionStyles < ActiveRecord::Migration[5.2]
  def change
    add_column :section_styles, :min_height, :integer
  end
end
