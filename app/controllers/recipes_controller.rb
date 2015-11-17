class RecipesController < ApplicationController
  before_action :authenticate_user!, excpet: [:index, :show]
  def index
    @recipes = Recipe.all
  end

  def show
    @recipe = Recipe.find(params[:id])
  end

  def new
    @recipe = Recipe.new
  end

  def create
    @recipe = current_user.recipe.new(recipe_params)
    if @recipe.save
      redirect_to recipes_path
    end
  end

  def edit
    @recipe = Recipe.find(params[:id])
  end

  def update
    @recipe = Recipe.find(params[:id])
    if @recipe.update(recipe_params)
      redirect_to recipes_path
    end
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
    params.require(:recipe).permit(:title, :items, :process)    
  end
end
