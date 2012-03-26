class Ingredient < ActiveRecord::Base
  before_save :create_slug
  
  validates :name, :presence => true

  belongs_to :category, :foreign_key => :ingredient_category_id, :class_name => "IngredientCategory"
  belongs_to :grocery_category

  default_scope includes(:category, :grocery_category).order('name')

  def to_param
    "#{id}-#{slug}"
  end

  def create_slug
    self.slug = self.name.parameterize
  end
end
