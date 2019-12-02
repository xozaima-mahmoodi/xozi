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
    end
  end

  context 'GET user#show' do
    it 'should return 200 response' do
      user = create :user, email: 'test@test.com', password: '123456Aa!'

      sign_in( user )
      
      get '/api/mendil/users'
      expect(response).to have_http_status(200)
    end
  end

  describe 'POST user#create' do
    it 'create a new user' do
      user = create :user, email: 'test@test.com', password: '123456Aa!'

      valid_user_params = {
        user: {
          first_name: 'xendil',
          last_name: 'xendili',
          email: 'xendil@gmail.com',
          password: '123456Aa!',
          role: nil
        }
      }

      sign_in( user )
 
      expect { post '/api/mendil/users', params: valid_user_params }.to change(User, :count).by(1)
    end
  end

  context 'PUT user#update' do
    it 'should change user attributes' do
      user = create :user, email:'test@test.com', password: '123456Aa'

      valid_user_params = {
        user: {
          first_name:'xozi',
          last_name:'mah',
          user_id: user.id
        }
      }

      sign_in( user )

      put "/api/mendil/users/#{user.id}", params: valid_user_params
      user.reload
      expect(user.first_name).to eq('xozi')
      expect(user.last_name).to eq('mah')
    end
  end
end