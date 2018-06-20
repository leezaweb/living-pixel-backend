class AddHeightToSectionStyles < ActiveRecord::Migration[5.2]
  def change
    add_column :section_styles, :height, :integer
  end
end
