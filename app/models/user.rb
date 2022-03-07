# == Schema Information
#
# Table name: users
#
#  id              :integer          not null, primary key
#  email           :string
#  password_digest :string
#  username        :string
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#
class User < ApplicationRecord
  validates :email, :uniqueness => { :case_sensitive => false }
  validates :email, :presence => true
  has_secure_password
  has_many(:leagues, { :class_name => "League", :foreign_key => "user_id", :dependent => :destroy })
  has_many(:team_rosters, { :class_name => "TeamRoster", :foreign_key => "user_id", :dependent => :destroy })
  has_many(:fantasy_teams, { :class_name => "FantasyTeam", :foreign_key => "user_id", :dependent => :destroy })
end
