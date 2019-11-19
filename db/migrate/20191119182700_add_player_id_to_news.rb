class AddPlayerIdToNews < ActiveRecord::Migration[5.2]
  def change
    add_column :news, :player_id, :integer
  end
end
