RSpec.describe 'Team Controller', type: :request do
  context 'GET team#index' do
    it 'should return successful response' do
      user = create :user, email:'test@test.com', password: '123456Aa!'
      team = create :team, name:'perspolis', description:'666666', user_id: user.id

      sign_in(user)

      get '/api/mendil/team'
      expect(response).to be_successful
    end
  end

  context 'GET team#show' do
    it 'should return 200 response' do
      user = create :user, email: 'test@test.com', password: '123456Aa!'
      team = create :team, name:'perspolis', description:'666666', user_id: user.id

      sign_in( user )
      
      get '/api/mendil/team'
      expect(response).to have_http_status(200)
    end
  end

  context 'POST team#create' do
    it 'should create a team' do
    user = create :user, email: 'test@test.com', password: '123456Aa!'
    team = create :team, user_id: user.id

      valid_team_params = {
        team: {
          name:'perspolis',
          description:'666666',
          user_id: user.id,
          team_id: team.id
        }
      }

      sign_in( user )

      expect{ post "/api/mendil/team", params:valid_team_params }.to change(Team, :count).by(1)
    end
  end

  context 'PUT team#update' do
    it 'should change team attributes' do
      user = create :user, email:'test@test.com', password: '123456Aa'
      team = create :team, user_id: user.id
      
      valid_team_params = {
        team: {
          name:'perspolis',
          description:'666666',
          user_id: user.id,
          team_id: team.id
        }
      }

      sign_in( user )

      put "/api/mendil/team/#{team.id}", params: valid_team_params
      team.reload
      expect(team.name).to eq('perspolis')
      expect(team.description).to eq('666666')
    end
  end
end
