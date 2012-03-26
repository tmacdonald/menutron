class Ingredient < ActiveRecord::Base
  validates :name, :presence => true

  belongs_to :ingredient_category
  belongs_to :grocery_category
end
