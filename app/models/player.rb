# == Schema Information
#
# Table name: players
#
#  id         :integer          not null, primary key
#  firstname  :string
#  lastname   :string
#  playerhash :string
#  positionid :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
class Player < ApplicationRecord
  has_many(:fantasypoints, { :class_name => "Fantasypoint", :foreign_key => "player_id", :dependent => :destroy })

  has_many(:teamrosters, { :class_name => "TeamRoster", :foreign_key => "player_id", :dependent => :destroy })
end
