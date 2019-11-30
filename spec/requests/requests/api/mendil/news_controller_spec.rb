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

  context 'PUT news#update' do
    it 'should change news attributes' do
      user = create :user, email:'test@test.com', password: '123456Aa'
      team = create :team, user_id: user.id
      player = create :player, user_id: user.id, team_id: team.id
      news = create :news, title:'title', description:'dddddd', user_id: user.id, team_id: team.id, player_id: player.id
        valid_attributes = {
          id: news.id,
          news: {
           title: 'title',
           description: 'dddddd'
          }
        }
      sign_in( user )
      put "/api/mendil/news/#{news.id}", params: valid_attributes
      news.reload
      expect(news.title).to eq('title')
      expect(news.description).to eq('dddddd')
    end
  end

  context 'GET news#destroy' do
    it 'should destroy a news' do
     user = create :user, email:'test@test.com', password: '123456Aa'
     team = create :team, user_id: user.id
     player = create :player, user_id: user.id, team_id: team.id
     news = create :news, title:'title', description:'eeeeee', user_id: user.id, team_id: team.id, player_id: player.id
     count = News.count

     sign_in( user )

     delete "/api/mendil/news/#{news.id}", params: { id: news.id }
     expect(News.count).to eq( count - 1 )
    end
  end


end
