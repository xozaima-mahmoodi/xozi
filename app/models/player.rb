# == Schema Information
#
# Table name: players
#
#  id         :integer          not null, primary key
#  name       :string
#  lastname   :string
#  post       :string
#  age        :integer
#  image      :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Player < ApplicationRecord
    validates :name, presence: true
    validates :lastname, presence: true
    validates :post, presence: true
end
