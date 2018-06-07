class CreateSections < ActiveRecord::Migration[5.2]
  def change
    create_table :sections do |t|
      t.references :site
      t.integer :sequence
    end
  end
end
