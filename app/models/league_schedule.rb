# == Schema Information
#
# Table name: league_schedules
#
#  id                   :integer          not null, primary key
#  week                 :integer
#  created_at           :datetime         not null
#  updated_at           :datetime         not null
#  away_fantasy_team_id :integer
#  home_fantasy_team_id :integer
#
class LeagueSchedule < ApplicationRecord
end
