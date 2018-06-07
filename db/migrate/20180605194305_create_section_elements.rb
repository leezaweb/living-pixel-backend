class CreateSectionElements < ActiveRecord::Migration[5.2]
  def change
    create_table :section_elements do |t|
      t.references :section
      t.references :element
    end
  end
end
