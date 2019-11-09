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

class User < ApplicationRecord
    enum role: %i(admin expert)
    validates :first_name, presence: true
    validates :last_name, presence: true

    def full_name
      "#{first_name} #{last_name}"
    end
end
