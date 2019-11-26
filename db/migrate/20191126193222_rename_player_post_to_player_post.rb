class RenamePlayerPostToPlayerPost < ActiveRecord::Migration[5.2]
  def change
    rename_column :players, :post, :player_post
  end
end
