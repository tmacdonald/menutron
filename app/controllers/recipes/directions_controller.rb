class Recipes::DirectionsController < ApplicationController
  before_filter :find_recipe

  respond_to :json, :xml

  def index
    @directions = @recipe.directions
  end

  def show
    @direction = @recipe.directions.find(params[:id])
  end

  def new
    @direction = @recipe.directions.new
  end

  def edit
    @direction = @recipe.directions.find(params[:id])
  end

  def create
    @direction = @recipe.directions.new(params[:direction])

    respond_to do |format|
      if @direction.save
        format.html { redirect_to @direction, notice: 'Direction was successfully created.' }
        format.json { render json: @direction, status: :created, location: @direction }
      else
        format.html { render action: "new" }
        format.json { render json: @direction.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    @direction = @recipe.directions.find(params[:id])

    respond_to do |format|
      if @direction.update_attributes(params[:direction])
        format.html { redirect_to @direction, notice: 'Direction was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @direction.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @direction = @recipe.directions.find(params[:id])
    @direction.destroy

    respond_to do |format|
      format.html { redirect_to directions_url }
      format.json { head :no_content }
    end
  end

private
  def find_recipe
    @recipe = Recipe.find(params[:recipe_id])
  end
end
