class AddShortNameToPosition < ActiveRecord::Migration[6.0]
  def change
    add_column :positions, :short_name, :string
  end
end
