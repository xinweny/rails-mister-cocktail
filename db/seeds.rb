require 'open-uri'
require 'json'

Ingredient.destroy_all
Cocktail.destroy_all

url = 'https://www.thecocktaildb.com/api/json/v1/1/list.php?i=list'
drinks = JSON.parse(open(url).read)

drinks['drinks'].each do |ingredient|
  Ingredient.create!(name: ingredient['strIngredient1'])
end

