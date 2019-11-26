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

FactoryGirl.define do
  factory :team do
    name { FFaker::Name.name }
    description { FFaker::Name.phrase }
    image { FFaker::Image.image }

    association :user, factory: :user
    association :player, factory: :player
  end
end
