class CreateDirections < ActiveRecord::Migration
  def change
    create_table :directions do |t|
      t.references :recipe
      t.string :text

      t.timestamps
    end
    add_index :directions, :recipe_id
  end
end
