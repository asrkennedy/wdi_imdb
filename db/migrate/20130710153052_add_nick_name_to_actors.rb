class AddNickNameToActors < ActiveRecord::Migration
  def change
    add_column :actors, :nick_name, :string
  end
end
