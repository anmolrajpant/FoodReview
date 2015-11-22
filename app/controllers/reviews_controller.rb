class ReviewsController < ApplicationController
  def index
    @recipe = Recipe.find(params[:recipe_id])
    @reviews= @recipe.reviews
  end

  def show
    @recipe = Recipe.find(params[:recipe_id])
    @review = @recipe.reviews.find(params[:id])
  end

  def new
    @recipe = Recipe.find(params[:recipe_id])
    @review = @recipe.reviews.new
  end

  def create
    @recipe = Recipe.find(params[:recipe_id])
    @reviews = @recipe.reviews.new(save)
    if @recipe.save
      redirect_to recipe_path(recipe)
    end
  end

  def edit
  end

  def update
  end

  def destroy
  end

  private
  def save
    params.require(:review).permit(:comment)
  end
end
