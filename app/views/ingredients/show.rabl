object @ingredient

attributes :name

node(:category) { |i| i.category.name }
node("grocery category") { |i| i.grocery_category.name }
