class RecipesController < ApplicationController

  def index
    @recipes = Recipe.all
  end

  def show
    @recipe = Recipe.find(params[:id])

    respond_to do |format|
      format.html
      format.json { render json: @recipe }
    end
  end

  def new
    @recipe = Recipe.new
  end

  def create

    @recipe = Recipe.new(recipe_params)

    if @recipe.save
      redirect_to @recipe
    else
      render :new
    end
  end

  private

  def recipe_params
    params.require(:recipe).permit(:name, ingredients_attributes: [:name])
  end
end
