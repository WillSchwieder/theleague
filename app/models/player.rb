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
end
