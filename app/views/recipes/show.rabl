object @recipe

attributes :name, :servings

node(:uri) { |recipe| recipe_url(recipe.to_param, format: request.format.to_sym) }
