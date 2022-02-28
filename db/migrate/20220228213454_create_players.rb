class CreatePlayers < ActiveRecord::Migration[6.0]
  def change
    create_table :players do |t|
      t.string :firstname
      t.string :lastname
      t.integer :positionid
      t.string :playerhash

      t.timestamps
    end
  end
end
