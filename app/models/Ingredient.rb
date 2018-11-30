class Ingredient

  attr_accessor :ingredient_name

  @@all = []

  def initialize(ingredient_name)
    @ingredient_name = ingredient_name
    @@all << self
  end

  def self.all
    @@all
  end

  def self.most_common_allergen
    hash = {}
    Allergen.all.each do |allergy|
      if hash.include?(allergy.ingredient)
        hash[allergy.ingredient] += 1
      else
        hash[allergy.ingredient] = 1
      end
    end
    most_common = hash.max_by {|ingredient, value| value}
    most_common[0]
  end

end
