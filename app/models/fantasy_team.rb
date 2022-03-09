# == Schema Information
#
# Table name: fantasy_teams
#
#  id           :integer          not null, primary key
#  image        :string
#  name         :string
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#  league_id    :integer
#  team_type_id :integer
#  user_id      :integer
#
class FantasyTeam < ApplicationRecord
  has_many(:teamrosters, { :class_name => "TeamRoster", :foreign_key => "fantasy_team_id", :dependent => :destroy })

  has_many(:league_schedules, { :class_name => "LeagueSchedule", :foreign_key => "home_fantasy_team_id", :dependent => :destroy })

  belongs_to(:league, { :required => true, :class_name => "League", :foreign_key => "league_id" })

  belongs_to(:team_type, { :required => true, :class_name => "TeamType", :foreign_key => "team_type_id" })

  belongs_to(:user, { :required => true, :class_name => "User", :foreign_key => "user_id" })
end
