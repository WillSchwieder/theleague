# == Schema Information
#
# Table name: games
#
#  id           :integer          not null, primary key
#  week         :string
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#  away_team_id :integer
#  home_team_id :integer
#
class Game < ApplicationRecord
  belongs_to(:home_team, { :required => true, :class_name => "Team", :foreign_key => "home_team_id" })

  has_many(:fantasypoints, { :class_name => "Fantasypoint", :foreign_key => "game_id", :dependent => :destroy })
end
