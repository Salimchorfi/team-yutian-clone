class CreateJams < ActiveRecord::Migration[5.0]
  def change
    create_table :jams do |t|
      t.string :name
      t.integer :price
      t.text :description
      t.string :category
      t.string :ingredient
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
