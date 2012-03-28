class Direction < ActiveRecord::Base
  belongs_to :recipe

  validates :text, :presence => true
end
