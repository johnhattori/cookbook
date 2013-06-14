class RecipesController < ApplicationController
  require "open-uri"

  def index
    @recipe = Recipe.all
  end

  def new
    @recipe = Recipe.new
  end

  def create
    @recipe = Recipe.new(params[:article])

    if @recipe.save
      redirect_to "/recipes/index"
    else
      render "recipes/index"
    end
  end

  def edit
    @recipe = Recipe.find(params[:id])
  end

  def update
    @recipe = Recipe.find(params[:id])
    @recipe.update_attributes(params[:recipe])
    redirect_to "/recipe/index"
  end

  def destroy
    @recipe = Recipe.find(params[:id])
    @recipe.delete
  end

  def show
    @recipe = Recipe.find(params[:id])
  end
end
