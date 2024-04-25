class AddTagsToRecipes < ActiveRecord::Migration[6.1]
  def change
    unless column_exists?(:recipes, :tags)
      add_column :recipes, :tags, :string
    end
  end
end
