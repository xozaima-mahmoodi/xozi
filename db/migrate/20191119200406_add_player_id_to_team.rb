class AddPlayerIdToTeam < ActiveRecord::Migration[5.2]
  def change
    add_column :teams, :player_id, :integer
  end
end
