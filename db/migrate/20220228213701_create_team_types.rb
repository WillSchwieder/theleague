class CreateTeamTypes < ActiveRecord::Migration[6.0]
  def change
    create_table :team_types do |t|
      t.string :specialpower

      t.timestamps
    end
  end
end
