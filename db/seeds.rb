# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Ingredient.create(name: "lemon")
Ingredient.create(name: "ice")
Ingredient.create(name: "mint leaves")

require 'json'
require 'open-uri'

api_url = "https://www.thecocktaildb.com/api/json/v1/1/list.php?i=list"
#this is a json hash giving cocktail ingredients

counter = 0
while counter <= 40
  open(api_url) do |stream|
  ingredient = JSON.parse(stream.read)
  Ingredient.create(name: ingredient['drinks'][counter]["strIngredient1"])
  end
  counter += 1
end


