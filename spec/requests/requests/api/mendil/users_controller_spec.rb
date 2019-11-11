RSpec.describe 'Users Controller', type: :request do
  context '.index' do
    it 'should return not logged in message' do
      get '/api/mendil/users'
      expect(json['message']).to eql('You are not loged in! Please try agin')
    end

    it 'should return success data when login as admin' do
      user = create(:user,
        role: 'admin',
        first_name: 'xendil',
        last_name: 'xendili',
        email: 'xendil@gmail.com',
      )
      sign_in(user)
      get '/api/mendil/users'

      expect(json['data'].size).to eql(1)
      expect(json['data'][0]['id'].to_i).to eql(user.id)
      expect(json['data'][0]['attributes']['first_name']).to eql('xendil')
      expect(json['data'][0]['attributes']['last_name']).to eql('xendili')
      expect(json['data'][0]['attributes']['email']).to eql('xendil@gmail.com')
    end

    it 'should not return success data when login as expert' do
      user = create(:user,
        role: 'expert'
      )
      sign_in(user)
      expect { get '/api/mendil/users' }.to raise_error
    
      # expect(json['data'].size).to eql(1)
      # expect(json['data'][0]['id'].to_i).to eql(user.id)
      # expect(json['data'][0]['attributes']['first_name']).to eql('xendil')
      # expect(json['data'][0]['attributes']['last_name']).to eql('xendili')
      # expect(json['data'][0]['attributes']['email']).to eql('xendil@gmail.com')

    end
  end
end