class ChangeClassAttributeOnCharacter < ActiveRecord::Migration
  def change
  	change_table :characters do |t|
  		t.remove :class
  		t.string :user_class
  	end
  end
end
