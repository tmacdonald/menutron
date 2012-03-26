object @ingredient_category

attributes :name
child :ingredients do
  attributes :name
end
