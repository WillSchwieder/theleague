class AddImageToFantasyTeam < ActiveRecord::Migration[6.0]
  def change
    add_column :fantasy_teams, :image, :string
  end
end
