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
#

class Team < ApplicationRecord

    has_many :news
    belongs_to :user
    
    validates :name, presence: true
    validates :description, presence: true
end
