# == Schema Information
#
# Table name: fantasy_teams
#
#  id           :integer          not null, primary key
#  name         :string
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#  league_id    :integer
#  team_type_id :integer
#
class FantasyTeam < ApplicationRecord
end
