class CreateReviews < ActiveRecord::Migration
  def change
    create_table :reviews do |t|
      t.string :name
      t.integer :rate
      t.text :comment

      t.timestamps null: false
    end
  end
end
