class AddSlugsToIngredientCategoryAndGroceryCategory < ActiveRecord::Migration
  def change
    add_column :ingredient_categories, :slug, :string
    add_column :grocery_categories, :slug, :string
  end
end
