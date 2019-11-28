class CreatePlayers < ActiveRecord::Migration[5.2]
  def change
    create_table :players do |t|
      t.string :first_name
      t.string :last_name
      t.string :post
      t.integer :age
      t.string :image

      t.timestamps
    end
  end
end
