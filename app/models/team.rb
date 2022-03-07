# == Schema Information
#
# Table name: teams
#
#  id         :integer          not null, primary key
#  mascot     :string
#  name       :string
#  name_abbr  :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
class Team < ApplicationRecord
  has_many(:fantasypoints, { :class_name => "Fantasypoint", :foreign_key => "team_id", :dependent => :destroy })
  has_many(:games, { :class_name => "Game", :foreign_key => "home_team_id", :dependent => :destroy })
end
