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
    title "MyString"
    description "MyText"
    image "MyString"
  end
end
