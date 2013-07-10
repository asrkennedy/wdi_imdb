class AddActorImageToActors < ActiveRecord::Migration
  def change
    add_column :actors, :actor_image, :string
  end
end
