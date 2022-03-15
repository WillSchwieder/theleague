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
  belongs_to(:player, { :required => true, :class_name => "Player", :foreign_key => "player_id" })
  belongs_to(:fantasy_team, { :required => true, :class_name => "FantasyTeam", :foreign_key => "fantasy_team_id" })
  belongs_to(:user, { :required => true, :class_name => "User", :foreign_key => "user_id" })
end
