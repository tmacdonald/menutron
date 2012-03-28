object @recipe

attributes :name, :servings

child :ingredients => :ingredients do
  attributes :text
end

child :directions => :directions do
  attributes :text
end


