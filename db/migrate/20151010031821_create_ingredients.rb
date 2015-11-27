class CreateIngredients < ActiveRecord::Migration
  def change
    create_table :ingredients do |t|
      t.integer :cocktail_id
      t.integer :spirit_id

      t.timestamps null: false
    end
  end
end
