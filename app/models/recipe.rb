class Recipe < ActiveRecord::Base
  before_save :create_slug

  validates :name, :presence => true

  has_many :ingredients, :foreign_key => :recipe_id, :class_name => "RecipeIngredient"
  has_many :directions

  def create_slug
    self.slug = self.name.parameterize
  end

  def to_param
    "#{id}-#{slug}"
  end

end
