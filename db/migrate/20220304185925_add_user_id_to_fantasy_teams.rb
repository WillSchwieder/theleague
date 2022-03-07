class AddUserIdToFantasyTeams < ActiveRecord::Migration[6.0]
  def change
    add_column :fantasy_teams, :user_id, :integer
  end
end
