class AddFantasyPositionToTeamRosters < ActiveRecord::Migration[6.0]
  def change
    add_column :team_rosters, :fantasy_position, :string
  end
end
