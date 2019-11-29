# == Schema Information
#
# Table name: teams
#
#  id          :integer          not null, primary key
#  name        :string
#  description :text
#  image       :string
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  user_id     :integer
#  player_id   :integer
#

class Team < ApplicationRecord

  has_many :news
  has_many :players
  belongs_to :user
  
  validates :name, presence: true
  validates :description, presence: true
end
