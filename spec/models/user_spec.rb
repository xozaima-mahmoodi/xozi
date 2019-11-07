# == Schema Information
#
# Table name: users
#
#  id         :integer          not null, primary key
#  first_name :string
#  last_name  :string
#  role       :integer
#  email      :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

require 'rails_helper'

RSpec.describe User, type: :model do

  context 'Enumerations' do
    it { is_expected.to respond_to :admin? }
    it { is_expected.to respond_to :expert? }
  end
  
end
