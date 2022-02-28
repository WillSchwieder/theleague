class CreateLeagues < ActiveRecord::Migration[6.0]
  def change
    create_table :leagues do |t|
      t.string :name
      t.string :year
      t.integer :league_type_id

      t.timestamps
    end
  end
end
