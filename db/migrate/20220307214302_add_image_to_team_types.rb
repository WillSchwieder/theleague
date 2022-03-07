class AddImageToTeamTypes < ActiveRecord::Migration[6.0]
  def change
    add_column :team_types, :image, :string
  end
end
