# == Schema Information
#
# Table name: players
#
#  id          :integer          not null, primary key
#  first_name  :string
#  last_name   :string
#  player_post :string
#  age         :integer
#  image       :string
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  user_id     :integer
#  team_id     :integer
#

class Player < ApplicationRecord

    has_many :news
    belongs_to :user
    belongs_to :team
    
    validates :first_name, presence: true
    validates :last_name, presence: true
    validates :player_post, presence: true
end
