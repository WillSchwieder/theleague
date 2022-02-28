class CreateLeagueSchedules < ActiveRecord::Migration[6.0]
  def change
    create_table :league_schedules do |t|
      t.integer :home_fantasy_team_id
      t.integer :away_fantasy_team_id
      t.integer :week

      t.timestamps
    end
  end
end
