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

require 'rails_helper'

RSpec.describe Team, type: :model do
  context "Validation test" do

    it "is not valid without a name" do
      team = build :team, name: nil
      expect(team).to_not be_valid
    end
  
    it "is not valid without a description" do
      team = build :team, description: nil
      expect(team).to_not be_valid
    end
  end

  describe "relation" do
    it { should belong_to(:user) }
  end

  describe "relation" do
    it { should have_many(:news) }
  end

  describe "relation" do
    it { should have_many(:player) }
  end

end
