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

FactoryGirl.define do
  factory :player do
    name { FFaker::Name.name }
    lastname { FFaker::Name.last_name }
    player_post { FFaker::Name.name }
    age { Faker::Number.age(digits: 3) }
    image { FFaker::Avatar.image }

    association :team, factory: :team
    association :user, factory: :user
  end
end
