RSpec.describe 'Sessions Controller', type: :request do
  context '.create' do
    it 'should return failed response' do
      post '/users/sign_in', params: {}

      expect(json['success']).to eql(false)
      expect(json['errors']).to eql(['Login failed.'])
    end

    it 'should return success response' do
      create(:user, email: 'test@test.com', password:'123456Aa!')

      post '/users/sign_in', params: {
        user: {
          email: 'test@test.com',
          password: '123456Aa!',
        },
      }

      expect(json['success']).to eql(true)
    end
  end

  context 'destroy' do
    it 'should return success response' do
      user = create(:user, email: 'test@test.com', password:'123456Aa!')
      sign_in(user)

      delete '/users/sign_out'

      expect(json['logout']).to eql(true)
    end
  end
end