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
end
