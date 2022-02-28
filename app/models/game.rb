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
end
