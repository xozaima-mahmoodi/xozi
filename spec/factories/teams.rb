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
    name "MyString"
    description "MyText"
    image "MyString"
  end
end
