# == Schema Information
#
# Table name: news
#
#  id          :integer          not null, primary key
#  title       :string
#  description :text
#  image       :string
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  user_id     :integer
#

class News < ApplicationRecord

    belongs_to :team
    belongs_to :player
    belongs_to :user

    validates :title, presence: true
    validates :description, presence: true
end
