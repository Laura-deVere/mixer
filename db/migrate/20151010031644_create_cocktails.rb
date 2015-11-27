class CreateCocktails < ActiveRecord::Migration
  def change
    create_table :cocktails do |t|
      t.string :cocktail_name
      t.string :cocktail_type
      t.string :recipe

      t.timestamps null: false
    end
  end
end
