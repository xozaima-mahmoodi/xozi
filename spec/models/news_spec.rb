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
#

require 'rails_helper'

RSpec.describe News, type: :model do
  context "Test for my news" do

    it "is not valid without a title" do
      news = build :news, title: nil
      expect(news).to_not be_valid
    end
  
    it "is not valid without a description" do
      news = build :news, description: nil
      expect(news).to_not be_valid
    end
    
  end
end