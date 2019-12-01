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

  context 'GET player#show' do
    it 'should return 200 response' do
      user = create :user, email: 'test@test.com', password: '123456Aa!'
      team = create :team, user_id: user.id
      player = create :player, first_name:'xozi', last_name:'mah', player_post:'forward', user_id: user.id, team_id: team.id

      sign_in( user )
      
      get '/api/mendil/player'
      expect(response).to have_http_status(200)
    end
  end

  context 'POST player#create' do
    it 'should create a player' do
    user = create :user, email: 'test@test.com', password: '123456Aa!'
    team = create :team, user_id: user.id
    player = create :player, user_id: user.id, team_id: team.id

      valid_player_params = {
        player: {
          first_name:'xozi',
          last_name:'mah',
          player_post:'forward',
          user_id: user.id,
          team_id: team.id,
          player_id: player.id
        }
      }

      sign_in( user )
      expect{ post "/api/mendil/player", params:valid_player_params }.to change(Player, :count).by(1)
    end
  end

  context 'PUT player#update' do
    it 'should change player attributes' do
      user = create :user, email:'test@test.com', password: '123456Aa'
      team = create :team, user_id: user.id
      player = create :player, user_id: user.id, team_id: team.id

      valid_player_params = {
        player: {
          first_name:'xozi',
          last_name:'mah',
          player_post:'forward',
          user_id: user.id,
          team_id: team.id,
          player_id: player.id
        }
      }

      sign_in( user )
      put "/api/mendil/player/#{player.id}", params: valid_player_params
      player.reload
      expect(player.first_name).to eq('xozi')
      expect(player.last_name).to eq('mah')
      expect(player.player_post).to eq('forward')
    end
  end

  context 'GET player#destroy' do
    it 'should destroy a player' do
     user = create :user, email:'test@test.com', password: '123456Aa'
     team = create :team, user_id: user.id
     player = create :player, user_id: user.id, team_id: team.id
     
     count = Player.count

     sign_in( user )

     delete "/api/mendil/player/#{player.id}", params: { id: player.id }
     expect(Player.count).to eq( count - 1 )
    end
  end
end
