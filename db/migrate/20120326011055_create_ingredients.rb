class CreateIngredients < ActiveRecord::Migration
  def change
    create_table :ingredients do |t|
      t.string :name
      t.references :ingredient_category
      t.references :grocery_category

      t.timestamps
    end
  end
end
