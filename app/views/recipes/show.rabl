object @recipe

attributes :name, :servings

child :ingredients => :ingredients do
  attributes :text
end


