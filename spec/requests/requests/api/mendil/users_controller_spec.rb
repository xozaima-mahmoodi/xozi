RSpec.describe 'Users Controller', type: :request do
  context '.index' do
    it 'should return not logged in message' do
      get '/api/mendil/users'
      expect(json['message']).to eql('You are not loged in! Please try agin')
    end

    it 'should return success data' do
      user = create(:user)
      sign_in(user)
      get '/api/mendil/users'
      expect(json['data']).to eql(true)
    end

  end
end