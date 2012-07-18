class AddAttributesTotalToCharacters < ActiveRecord::Migration
  def change
    add_column :characters, :attributes_total, :integer
  end
end
