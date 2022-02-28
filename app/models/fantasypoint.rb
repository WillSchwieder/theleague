# == Schema Information
#
# Table name: fantasypoints
#
#  id                   :integer          not null, primary key
#  comp                 :integer
#  fumble               :integer
#  half_ppr_fantasy_pts :float
#  int                  :integer
#  passing_att          :integer
#  passing_td           :integer
#  passing_yrd          :integer
#  ppr_fantasy_points   :float
#  rec                  :integer
#  receiving_yrds       :integer
#  rushing_att          :integer
#  rushing_td           :integer
#  rushing_yrd          :integer
#  standard_fantasy_pts :float
#  targets              :integer
#  created_at           :datetime         not null
#  updated_at           :datetime         not null
#  game_id              :integer
#  player_id            :integer
#  team_id              :integer
#
class Fantasypoint < ApplicationRecord
end
