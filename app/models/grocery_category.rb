class GroceryCategory < ActiveRecord::Base
  before_save :create_slug

  validates :name, :presence => true

  has_many :ingredients

  def to_param
    "#{id}-#{slug}"
  end

  def create_slug
    self.slug = self.name.parameterize
  end
end
