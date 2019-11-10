# == Schema Information
#
# Table name: users
#
#  id                     :integer          not null, primary key
#  first_name             :string
#  last_name              :string
#  role                   :integer
#  created_at             :datetime         not null
#  updated_at             :datetime         not null
#  email                  :string           default(""), not null
#  encrypted_password     :string           default(""), not null
#  reset_password_token   :string
#  reset_password_sent_at :datetime
#  remember_created_at    :datetime
#
# Indexes
#
#  index_users_on_email                 (email) UNIQUE
#  index_users_on_reset_password_token  (reset_password_token) UNIQUE
#

require 'rails_helper'

RSpec.describe User, type: :model do

  context 'Enumerations' do
    it { is_expected.to respond_to :admin? }
    it { is_expected.to respond_to :expert? }
  end

  describe 'methods' do

    context '.full_name' do
      it 'should return full_name' do
        user = build(:user, first_name: 'xozi', last_name:'xendil')
        expect(user.full_name).to eql('xozi xendil')
      end
    end

    # context 'user role' do

    #   it 'should return role' do
    #     user = build :user, role: :admin
    #     expect(user).to be_valid
    #   end

    #   it 'should return role' do
    #     user = build :user, role: :expert
    #     expect(user).to be_valid
    #   end

    # end

    context '.email' do
      it 'should return email' do
        user = build :user, email: 'xozi.xendil@gmail.com'
        expect(user.email).to eql('xozi.xendil@gmail.com')
      end
    end
    
  end

  describe 'Validation' do

    context 'first_name' do
      it 'should return error' do
        user = User.new
        user.first_name = ''
        expect(user.valid?).to eql(false)
        expect(user.errors.messages[:first_name]).to eql(["can't be blank"])
      end
    end

    context 'last_name' do
      it 'should return error' do
        user = User.new
        user.last_name = ''
        expect(user.valid?).to eql(false)
        expect(user.errors.messages[:last_name]).to eql(["can't be blank"])
      end
    end
    
  end
end
