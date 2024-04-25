class Recipe < ApplicationRecord
  belongs_to :user
  validates :title, presence: true

  # def ingredients_list
  #   ingredients.split(", ")
  # end

  # def directions_list
  #   directions.split(", ")
  # end

  # def friendly_created_at
  #   created_at.strftime("%A, %d %b %Y %l:%M %p")
  # end

  # def friendly_prep_time
  #   hours = prep_time / 60
  #   minutes = prep_time % 60
  #   result = " "
  #   result += "#{hours} hours " if hours > 0
  #   result += "#{minutes} minutes" if minutes > 0
  # end
end
