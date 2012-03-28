class Recipes::IngredientsController < ApplicationController
  before_filter :find_recipe

  respond_to :json, :xml

  def index
    @ingredients = @recipe.ingredients
  end

  def show
    @ingredient = @recipe.ingredients.find(params[:id])
  end

  def new
    @ingredient = @recipe.ingredients.new
  end

  def edit
    @ingredient = @recipe.ingredients.find(params[:id])
  end

  def create
    @ingredient = @recipe.ingredients.new(params[:ingredient])

    respond_to do |format|
      if @ingredient.save
        format.html { redirect_to @ingredient, notice: 'Ingredient was successfully created.' }
        format.json { render json: @ingredient, status: :created, location: @ingredient }
      else
        format.html { render action: "new" }
        format.json { render json: @ingredient.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    @ingredient = @recipe.ingredients.find(params[:id])

    respond_to do |format|
      if @ingredient.update_attributes(params[:ingredient])
        format.html { redirect_to @ingredient, notice: 'Ingredient was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @ingredient.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @ingredient = @recipe.ingredients.find(params[:id])
    @ingredient.destroy

    respond_to do |format|
      format.html { redirect_to ingredients_url }
      format.json { head :no_content }
    end
  end

private
  def find_recipe
    @recipe = Recipe.find(params[:recipe_id])
  end
end
