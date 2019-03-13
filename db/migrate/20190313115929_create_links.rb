class CreateLinks < ActiveRecord::Migration[5.2]
  def change
    create_table :links do |t|
      t.string :title
      t.integer :position
      t.text :description
      t.references :category, foreign_key: true

      t.timestamps
    end
  end
end
