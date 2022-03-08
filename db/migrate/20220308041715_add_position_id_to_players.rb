class AddPositionIdToPlayers < ActiveRecord::Migration[6.0]
  def change
    add_column :players, :position_id, :integer
  end
end
