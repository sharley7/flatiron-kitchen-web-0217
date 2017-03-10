class CreateIngredientRecipes < ActiveRecord::Migration
  def change
    create_table :ingredient_recipes do |t|
      t.references :ingredient, index: true
      t.references :recipe, index: true

      t.timestamps null: false
    end
    add_foreign_key :ingredient_recipes, :ingredients
    add_foreign_key :ingredient_recipes, :recipes
  end
end
