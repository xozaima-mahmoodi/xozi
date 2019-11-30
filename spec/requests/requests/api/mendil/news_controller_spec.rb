RSpec.describe 'News Controller', type: :request do
  context 'GET news#index' do
    it 'should return successful response' do
      user = create :user, email:'test@test.com', password: '123456Aa!'
      team = create :team, user_id: user.id
      player = create :player, user_id: user.id, team_id: team.id
      news = create :news, title:'title', description:'aaaaaa', user_id: user.id, team_id: team.id, player_id: player.id

      sign_in(user)

      get '/api/mendil/news'
      expect(response).to be_successful
    end
  end

  context 'GET news#show' do
    it 'should return 200 response' do
      user = create :user, email: 'test@test.com', password: '123456Aa!'
      team = create :team, user_id: user.id
      player = create :player, user_id: user.id, team_id: team.id
      news = create :news, user_id: user.id, team_id: team.id, player_id: player.id

      sign_in( user )
      
      get '/api/mendil/news'
      expect(response).to have_http_status(200)
    end
  end

  context 'post news#create' do
    it 'should create a news ' do
       user = create :user, email:'test@test.com', password:'123456Aa!'
       team = create :team, user_id: user.id
       player = create :player, user_id: user.id, team_id: team.id
        
       valid_attributes = {
          news: {
            title:'title',
            description:'cccccc',
            user_id: user.id,
            team_id: team.id,
            player_id: player.id
          }
        }

       sign_in( user )

       expect{ post "/api/mendil/news", params:valid_attributes }.to change(News, :count).by(1)
    end
  end


end
