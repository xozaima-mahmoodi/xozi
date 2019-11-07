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
#

require 'rails_helper'

RSpec.describe Team, type: :model do
  context "Test for my teams model" do

    it "is not valid without a name" do
      team = build :team, name: nil
      expect(team).to_not be_valid
    end
  
    it "is not valid without a description" do
      team = build :team, description: nil
      expect(team).to_not be_valid
    end

  end
end
