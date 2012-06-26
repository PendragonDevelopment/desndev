class CreateCharacters < ActiveRecord::Migration
  def change
    create_table :characters do |t|
      t.integer :aesthetics
      t.integer :analysis
      t.integer :charisma
      t.integer :curiosity
      t.integer :empathy
      t.integer :intuition
      t.integer :willpower
      t.string :class
      t.string :proficiency

      t.timestamps
    end
  end
end
