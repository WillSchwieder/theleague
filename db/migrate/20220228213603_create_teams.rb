class CreateTeams < ActiveRecord::Migration[6.0]
  def change
    create_table :teams do |t|
      t.string :name
      t.string :mascot
      t.string :name_abbr

      t.timestamps
    end
  end
end
