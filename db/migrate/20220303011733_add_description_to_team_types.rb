class AddDescriptionToTeamTypes < ActiveRecord::Migration[6.0]
  def change
    add_column :team_types, :description, :text
  end
end
