collection @recipes

attributes :name, :servings

node(:url) { |recipe| recipe_url(recipe.to_param, format: request.format.to_sym) }
