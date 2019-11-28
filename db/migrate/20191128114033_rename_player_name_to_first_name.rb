class RenamePlayerNameToFirstName < ActiveRecord::Migration[5.2]
  def change
    rename_column :players, :name, :first_name
  end
end
