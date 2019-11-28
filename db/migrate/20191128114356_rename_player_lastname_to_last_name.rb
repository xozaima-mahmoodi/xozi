class RenamePlayerLastnameToLastName < ActiveRecord::Migration[5.2]
  def change
    rename_column :players, :lastname, :last_name
  end
end
