require 'rails_helper'

RSpec.describe "Recipes", type: :request do
  describe "GET /recipes" do
    it "should display an array of recipes" do
      user = User.create!(name: "amanda", email: "amanda@example.com", password: "password")
      Recipe.create!(title: "mud pie", chef: "luna", directions: "do it", image_url: "...", prep_time: "100", user_id: user.id)
      Recipe.create!(title: "pumpkin pie", chef: "luna", directions: "do it", image_url: "...", prep_time: "100", user_id: user.id)
      Recipe.create!(title: "apple pie", chef: "luna", directions: "do it", image_url: "...", prep_time: "100", user_id: user.id)

      get "/recipes"
      recipes = JSON.parse(response.body)

      expect(response).to have_http_status(200)
      expect(recipes.length).to eq(3)
    end
  end


  describe "GET /recipes/:id" do
    it "should display an single recipe as a hash" do
      user = User.create!(name: "amanda", email: "amanda@example.com", password: "password")
      Recipe.create!(title: "mud pie", chef: "luna", directions: "do it", image_url: "...", prep_time: "100", user_id: user.id)

      recipe_id = Recipe.first.id
      get "/recipes/#{recipe_id}"
      recipe = JSON.parse(response.body)

      expect(response).to have_http_status(200)
      expect(recipe["title"]).to eq("mud pie")
    end
  end

  describe "POST /recipes" do
    it "creates a recipe" do
      user = User.create!(name: "amanda", email: "amanda@gmail.com", password: "password")
      jwt = JWT.encode({ user_id: user.id }, Rails.application.credentials.fetch(:secret_key_base),"HS256")

      post "/recipes/", params: {
        title: "mud pie",
        chef: "luna",
        directions: "bake mud",
        prep_time: 80,
        ingredients: "mud, crust",
        image_url: "new image_url"
      },
      headers: { "Authorization" => "Bearer #{jwt}" }
      recipe = JSON.parse(response.body)

      expect(response).to have_http_status(200)
      expect(recipe["title"]).to eq("mud pie")
    end
  end

end
