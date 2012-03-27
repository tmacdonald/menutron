collection @ingredient_categories

attributes :name

node(:uri) { |ingredient_category| ingredient_category_url(ingredient_category.to_param, format: request.format.to_sym) }
