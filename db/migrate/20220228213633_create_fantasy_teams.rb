class CreateFantasyTeams < ActiveRecord::Migration[6.0]
  def change
    create_table :fantasy_teams do |t|
      t.string :name
      t.integer :team_type_id
      t.integer :league_id

      t.timestamps
    end
  end
end
