class CreateMovies < ActiveRecord::Migration
  def change
    create_table :movies do |t|
      t.string :name
      t.string :rating
      t.integer :year
      t.string :run_time
      t.string :director

      t.timestamps
    end
  end
end
