class CreateLeaguetypes < ActiveRecord::Migration[6.0]
  def change
    create_table :leaguetypes do |t|
      t.string :league_type

      t.timestamps
    end
  end
end
