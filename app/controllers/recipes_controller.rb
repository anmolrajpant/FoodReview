class RecipesController < ApplicationController
  def index
    @recipes = Recipe.all
  end

  def show
    @recipe = Recipe.find(params[:id])
    @reviews = @recipe.reviews
  end

  def new
    @recipe = current_user.recipe.new
  end

  def create
    @recipe = Recipe.new(recipe_params)
    if @recipe.save
      UserMailer.newrecipe_email(@user.id).deliver!
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

  def destroy
    @recipe = Recipe.find(params[:id])
    if @recipe.destroy
      redirect_to recipes_path
    end
  end

  private
  def recipe_params
    params.require(:recipe).permit(:title, :items, :process, :image)    
  end
end