class Recipe

  attr_accessor :recipe_name

  @@all = []

  def initialize(recipe_name)
    @recipe_name = recipe_name
    @@all << self
  end

  def recipe_cards
    RecipeCard.all.select {|recipe_card| recipe_card.recipe == self}
  end

  def self.most_popular
    sorted = RecipeCard.all.sort_by {|card| card.rating }
    sorted[-1]
  end

  def user
    recipe_cards.map {|card| card.user}
  end

  def recipe_ingredient_links
    RecipeIngredient.all.select{|link| link.recipe == self}
  end

  def ingredients
    recipe_ingredient_links.map {|link| link.ingredient}
  end

  def allergens
    allergens = Allergen.all.select {|allergy| ingredients.include?(allergy.ingredient)}
    allergens.map{|allergy| allergy.ingredient}.uniq
  end

  def add_ingredients(array)
    array.each {|ingredient| RecipeIngredient.new(self, ingredient)}
  end

  def self.all
    @@all
  end

end