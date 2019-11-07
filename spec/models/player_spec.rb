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

require 'rails_helper'

RSpec.describe Player, type: :model do
  context "Test for player in my app" do

    it "is not valid without a name" do
      player = build :player, name: nil
      expect(player).to_not be_valid
    end
  
    it "is not valid without a lastname" do
      player = build :player, lastname: nil
      expect(player).to_not be_valid
    end

    it "is not valid without a post" do
      player = build :player, post: nil
      expect(player).to_not be_valid
    end

  end
end
