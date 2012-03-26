class AddSlugToIngredient < ActiveRecord::Migration
  def change
    add_column :ingredients, :slug, :string
  end
end
