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
#  user_id    :integer
#  team_id    :integer
#

FactoryGirl.define do
  factory :player do
    name { FFaker::Name.name }
    lastname { FFaker::Name.last_name }
    post { FFaker::Name.post }
    age { Faker::Number.age(digits: 3) }
    image { FFaker::Image.image }

    association :team, factory: :team
    association :user, factory: :user
  end
end
