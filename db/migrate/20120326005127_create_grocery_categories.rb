class CreateGroceryCategories < ActiveRecord::Migration
  def change
    create_table :grocery_categories do |t|
      t.string :name

      t.timestamps
    end
  end
end
