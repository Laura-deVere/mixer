class CreateSpirits < ActiveRecord::Migration
  def change
    create_table :spirits do |t|
      t.string :spirit_type
      t.string :brand_name
      t.string :description

      t.timestamps null: false
    end
  end
end
