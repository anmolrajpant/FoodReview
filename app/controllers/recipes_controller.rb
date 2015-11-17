class RecipesController < ApplicationController
  def index
    @recipes = Recipe.all
  end

  def show
    @recipes = Recipe.find(parmas[:id])
  end

  def new
    @recipes = Recipe.new
  end

  def create
    @recipe = Recipe.new(recipe_parmas)
    if @recipe.save
      redirect_to recipes_path
    end
  end

  def edit
  end

  def update
  end

  def delete
  end

  def destroy
    @recipe = Recipe.find(params[:id])
    if @recipe.destroy
      redirect_to recipes_path
    end
  end

  def recipe_params
    params.require(:recipe).permit(:title,:time,:ingredient,:producer)  
  end
end
