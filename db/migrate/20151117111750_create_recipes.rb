class CreateRecipes < ActiveRecord::Migration
  def change
    create_table :recipes do |t|
      t.string :title
      t.text :items
      t.text :process

      t.timestamps null: false
    end
  end
end
