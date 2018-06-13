class RemoveDisplayFromSectionStyles < ActiveRecord::Migration[5.2]
  def change
    remove_column :section_styles, :display, :string
  end
end
