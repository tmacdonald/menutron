class CreateRecipeIngredients < ActiveRecord::Migration
  def change
    create_table :recipe_ingredients do |t|
      t.references :recipe
      t.references :ingredient
      t.references :measurement
      t.string :text
      t.decimal :amount
      t.string :preparation

      t.timestamps
    end
    add_index :recipe_ingredients, :recipe_id
    add_index :recipe_ingredients, :ingredient_id
    add_index :recipe_ingredients, :measurement_id
  end
end
