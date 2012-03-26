class IngredientCategoriesController < ApplicationController

  respond_to :json, :xml

  def index
    @ingredient_categories = IngredientCategory.all
  end

  def show
    @ingredient_category = IngredientCategory.find(params[:id])
  end

end
