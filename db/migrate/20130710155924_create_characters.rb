class CreateCharacters < ActiveRecord::Migration
  def change
    create_table :characters do |t|
      t.string :name
      t.string :gender
      t.integer :age
      t.text :description

      t.timestamps
    end
  end
end
