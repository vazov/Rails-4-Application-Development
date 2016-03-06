json.array!(@recipes) do |recipe|
  json.extract! recipe, :id, :title, :cooking_time, :difficulty_level, :food_type_id, :food_preference_id, :cuisine_id, :ingredients, :text, :procedure
  json.url recipe_url(recipe, format: :json)
end
