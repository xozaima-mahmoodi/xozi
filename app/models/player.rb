# == Schema Information
#
# Table name: players
#
#  id          :integer          not null, primary key
#  name        :string
#  lastname    :string
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
    
    validates :name, presence: true
    validates :lastname, presence: true
    validates :post, presence: true
end
