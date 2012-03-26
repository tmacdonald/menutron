class Ingredient < ActiveRecord::Base
  before_save :create_slug
  
  validates :name, :presence => true

  belongs_to :ingredient_category
  belongs_to :grocery_category

  def to_param
    "#{id}-#{slug}"
  end

  def create_slug
    self.slug = self.name.parameterize
  end
end
