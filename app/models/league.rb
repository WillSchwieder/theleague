# == Schema Information
#
# Table name: leagues
#
#  id             :integer          not null, primary key
#  image          :string
#  name           :string
#  year           :string
#  created_at     :datetime         not null
#  updated_at     :datetime         not null
#  league_type_id :integer
#  user_id        :integer
#
class League < ApplicationRecord

  has_many(:fantasy_teams, { :class_name => "FantasyTeam", :foreign_key => "league_id", :dependent => :destroy })

  belongs_to(:league_type, { :required => true, :class_name => "Leaguetype", :foreign_key => "league_type_id" })

  belongs_to(:user, { :required => true, :class_name => "User", :foreign_key => "user_id" })
end
