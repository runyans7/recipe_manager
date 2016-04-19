class Recipe < ActiveRecord::Base
  has_many :recipe_ingredients
  has_many :ingredients, through: :recipe_ingredients
  validates_presence_of :name

  def ingredients_attributes=(ingredients_attributes)
    ingredients_attributes.each do |ingredient_attributes|
      unless ingredient_attributes["name"].blank?
        ingredient_to_add = Ingredient.find_or_create_by(name: ingredient_attributes["name"].downcase)
        self.recipe_ingredients.build(ingredient: ingredient_to_add)
      end
    end
  end
end
