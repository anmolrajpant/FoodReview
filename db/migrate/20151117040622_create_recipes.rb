class CreateRecipes < ActiveRecord::Migration
  def change
    create_table :recipes do |t|
      t.string :title
      t.integer :time
      t.text :ingredient
      t.text :producer

      t.timestamps null: false
    end
  end
end
