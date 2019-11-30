RSpec.describe 'Player Controller', type: :request do
  context 'GET player#index' do
    it 'should return successful response' do
      user = create :user, email:'test@test.com', password: '123456Aa!'
      team = create :team, user_id: user.id
      player = create :player, first_name:'xozi', last_name:'mah', player_post:'forward', user_id: user.id, team_id: team.id

      sign_in(user)

      get '/api/mendil/player'
      expect(response).to be_successful
    end
  end
end
