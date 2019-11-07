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
#

class News < ApplicationRecord
    validates :title, presence: true
    validates :description, presence: true
end
