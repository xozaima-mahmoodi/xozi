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
end
