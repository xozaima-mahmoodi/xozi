# == Schema Information
#
# Table name: players
#
#  id          :integer          not null, primary key
#  first_name  :string
#  last_name   :string
#  player_post :string
#  age         :integer
#  image       :string
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  user_id     :integer
#  team_id     :integer
#

require 'rails_helper'

RSpec.describe Player, type: :model do
  context "Validation test" do

    it "is not valid without a first_name" do
      player = build :player, first_name: nil
      expect(player).to_not be_valid
    end
  
    it "is not valid without a last_name" do
      player = build :player, last_name: nil
      expect(player).to_not be_valid
    end

    it "is not valid without a player_post" do
      player = build :player, player_post: nil
      expect(player).to_not be_valid
    end
  end

  describe "relation" do
    it { should belong_to(:user) }
  end

  describe "relation" do
    it { should have_many(:news) }
  end

  describe "relation" do
    it { should belong_to(:team) }
  end

end
