# == Schema Information
#
# Table name: team_rosters
#
#  id              :integer          not null, primary key
#  add_date        :string
#  drop_date       :string
#  status          :string
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#  fantasy_team_id :integer
#  player_id       :integer
#
class TeamRoster < ApplicationRecord
end
