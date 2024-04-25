class RecipeSerializer < ActiveModel::Serializer
  attributes :id, :title, :chef, :ingredients, :directions, :prep_time, :image_url, :user_id, :created_at, :updated_at
  #  :friendly_created_at, :directions_list, :ingredients_list, :friendly_prep_time
end
