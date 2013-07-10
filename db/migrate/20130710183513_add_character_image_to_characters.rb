class AddCharacterImageToCharacters < ActiveRecord::Migration
  def change
    add_column :characters, :character_image, :string
  end
end
