collection @ingredients

attributes :name
node(:category) { |i| i.ingredient_category.name }
node("grocery category") { |i| i.grocery_category.name }
