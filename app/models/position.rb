# == Schema Information
#
# Table name: positions
#
#  id         :integer          not null, primary key
#  name       :string
#  short_name :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
class Position < ApplicationRecord
  has_many(:players, { :class_name => "Player", :foreign_key => "position_id", :dependent => :destroy })
end
