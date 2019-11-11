class CreateRecipes < ActiveRecord::Migration[6.0]
 
  def change
    create_table :recipes do |t|
      t.string :name
      t.string :servings
      t.string :directions
      t.integer :calories
    end
  end
  
end
