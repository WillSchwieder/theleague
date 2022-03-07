# == Schema Information
#
# Table name: team_types
#
#  id           :integer          not null, primary key
#  description  :text
#  image        :string
#  specialpower :string
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#
class TeamType < ApplicationRecord

  has_many(:fantasy_teams, { :class_name => "FantasyTeam", :foreign_key => "team_type_id", :dependent => :destroy })
  
end
