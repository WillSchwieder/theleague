# == Schema Information
#
# Table name: leaguetypes
#
#  id          :integer          not null, primary key
#  league_type :string
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#
class Leaguetype < ApplicationRecord
  has_many(:leagues, { :class_name => "League", :foreign_key => "league_type_id", :dependent => :destroy })
end
