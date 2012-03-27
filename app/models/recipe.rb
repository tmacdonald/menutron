class Recipe < ActiveRecord::Base
  before_save :create_slug

  validates :name, :presence => true

  def create_slug
    self.slug = self.name.parameterize
  end

  def to_param
    "#{id}-#{slug}"
  end

end
