class CreateFantasypoints < ActiveRecord::Migration[6.0]
  def change
    create_table :fantasypoints do |t|
      t.integer :passing_yrd
      t.integer :passing_td
      t.integer :int
      t.integer :passing_att
      t.integer :comp
      t.integer :rushing_att
      t.integer :rushing_yrd
      t.integer :rushing_td
      t.integer :rec
      t.integer :targets
      t.integer :receiving_yrds
      t.integer :fumble
      t.float :ppr_fantasy_points
      t.float :standard_fantasy_pts
      t.float :half_ppr_fantasy_pts
      t.integer :player_id
      t.integer :team_id
      t.integer :game_id

      t.timestamps
    end
  end
end
