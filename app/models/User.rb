class User

  attr_accessor :user_name

  @@all = []

  def initialize(user_name)
    @user_name = user_name
    @@all << self
  end

  def self.all
    @@all
  end

  def recipe_cards
    RecipeCard.all.select {|recipe_card| recipe_card.user == self}
  end

  def recipes
    recipe_cards.map {|card| card.recipe}
  end

  def add_recipe_card(recipe, date, rating)
    RecipeCard.new(self, recipe, date, rating)
  end

  def declare_allergen(ingredient)
    Allergen.new(self, ingredient)
  end

  def allergens
    allergen = Allergen.all.select {|allergy| allergy.user == self}
    allergen.map {|allergy| allergy.ingredient}
  end

  def top_three_recipes
    sorted = recipe_cards.sort_by{|card| card.rating}
    recipe_cards = sorted.last(3)
    recipes = recipe_cards.map{|card| card.recipe}
  end

  def most_recent_recipe
    recipe_cards.sort_by {|card| card.date}[0].recipe
  end

  def safe_recipes
    Recipe.all.select {|recipe| (recipe.ingredients & allergens).length == 0}
    #arg1 & arg2  will return what the lists have in common
  end

end