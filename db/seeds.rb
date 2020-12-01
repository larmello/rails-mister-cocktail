# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'open-uri'
require 'json'

url = 'https://www.thecocktaildb.com/api/json/v1/1/list.php?i=list'
ingred_serialized = open(url).read
ingred = JSON.parse(ingred_serialized)

ingred['drinks'].each do |drink|
  ingredient = Ingredient.create(name: drink['strIngredient1'])
  puts ingredient.name
end


