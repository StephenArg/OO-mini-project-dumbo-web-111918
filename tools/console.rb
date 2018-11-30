require_relative '../config/environment.rb'

#Making Users
sam = User.new("Sam")
pedro = User.new("Pedro")
jose = User.new("Jose")
steven = User.new("Steven")
juan = User.new("Juan")
#Making Ingredients
pickles = Ingredient.new("Pickles")
milk = Ingredient.new("Milk")
chocolate = Ingredient.new("Chocolate")
peanuts = Ingredient.new("Peanut")
butter = Ingredient.new("Butter")
flour = Ingredient.new("Flour")
water = Ingredient.new("Water")
love = Ingredient.new("Love")
#Making Recipes
cake = Recipe.new("Cake")
cookie = Recipe.new("Cookie")
bread = Recipe.new("Bread")
waffles = Recipe.new("Waffles")
ham = Recipe.new("Ham")
arepa = Recipe.new("Arepa")
tacos = Recipe.new("Taco")
pasta = Recipe.new("Pasta")
#Making Allergens
sam.declare_allergen(milk)
pedro.declare_allergen(milk)
juan.declare_allergen(milk)
jose.declare_allergen(peanuts)
juan.declare_allergen(pickles)
juan.declare_allergen(butter)
#Making RecipeCards
sam.add_recipe_card(cake, "09-19-2018", 5)
sam.add_recipe_card(cookie, "09-19-2018", 4.5)
sam.add_recipe_card(bread, "09-19-2018", 7)
sam.add_recipe_card(waffles, "09-19-2018", 9)
sam.add_recipe_card(bread, "09-19-2018", 10)
sam.add_recipe_card(ham, "09-19-2018", 8)
juan.add_recipe_card(pasta, "12-10-2017", 4)
#Making RecipeIngredients
bread.add_ingredients([flour, water, love])
pasta.add_ingredients([butter, milk])
cake.add_ingredients([chocolate, peanuts, butter, milk])


binding.pry
yo = "0"