class RemoveAliasFromActors < ActiveRecord::Migration
  def up
    remove_column :actors, :alias
  end

  def down
    add_column :actors, :alias, :string
  end
end
