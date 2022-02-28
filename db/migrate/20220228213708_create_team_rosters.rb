class CreateTeamRosters < ActiveRecord::Migration[6.0]
  def change
    create_table :team_rosters do |t|
      t.integer :fantasy_team_id
      t.integer :player_id
      t.string :add_date
      t.string :status
      t.string :drop_date

      t.timestamps
    end
  end
end
