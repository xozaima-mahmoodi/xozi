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
#  player_id   :integer
#  team_id     :integer
#

FactoryGirl.define do
  factory :news do
    title { FFaker::Book.title }
    description { FFaker::Book.description }
    image { FFaker::Avatar.image }

    association :player, factory: :player
    association :team, factory: :team
    association :user, factory: :user
  end
end
