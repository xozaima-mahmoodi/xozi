RSpec.describe 'Sessions Controller', type: :request do
  it 'should return failed response' do
    post '/users/sign_in', params: {}

    expect(json['success']).to eql(false)
    expect(json['errors']).to eql(['Login failed.'])
  end

  it 'should return success response' do
    create(:user, email: 'test@test.com', password:'123456Aa!')

    post '/users/sign_in', params: {
      user: {
        email: 'test@test.com',
        password: '123456Aa!',
      },
    }

    expect(json['success']).to eql(true)
  end
end