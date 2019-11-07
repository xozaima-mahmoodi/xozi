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
  pending "add some examples to (or delete) #{__FILE__}"
end
