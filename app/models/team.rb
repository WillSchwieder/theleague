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
end
