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
    name "MyString"
    lastname "MyString"
    post "MyString"
    age 1
    image "MyString"
  end
end
