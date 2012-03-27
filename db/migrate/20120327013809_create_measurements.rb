class CreateMeasurements < ActiveRecord::Migration
  def change
    create_table :measurements do |t|
      t.string :name
      t.string :regex
      t.string :slug

      t.timestamps
    end
  end
end
