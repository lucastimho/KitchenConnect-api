class RecipesController < ApplicationController
  def index
      recipes = Recipe.all
      render json: recipes
  end

  def show
    recipe = Recipe.find_by(id: params[:id])
    render json: recipe
  end

  def create
    recipe = Recipe.new(
      user_id: current_user.id,
      title: params["title"],
      chef: params["chef"],
      ingredients: params["ingredients"],
      directions: params["directions"],
      image_url: params["image_url"],
      prep_time: params["prep_time"]
    )
    if recipe.save #happy path
      render json: recipe
    else #sad path
      render json: {errors: recipe.errors.full_messages}, 
      status: 422
    end
  end

  def update
    recipe_id = params["id"]
    recipe = Recipe.find_by(id: recipe_id)

    recipe.title = params["title"] || recipe.title
    recipe.chef = params["chef"] || recipe.chef
    recipe.ingredients = params["ingredients"] || recipe.ingredients
    recipe.directions = params["directions"] || recipe.directions
    recipe.prep_time = params["prep_time"] || recipe.prep_time

    if recipe.save
      render json: recipe
    else
      render json: {errors: recipe.errors.full_messages}, 
      status: 422
    end
  end

  def destroy
    recipe_id = params["id"]
    recipe = Recipe.find_by(id: recipe_id)

    recipe.destroy
    render json: {message: "Recipe successfully destroyed!"}
  end
end
