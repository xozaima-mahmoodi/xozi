Rails.application.routes.draw do
  
  namespace :api, defaults: { format: 'json' } do
    namespace :mendil do
      resources :users
      resources :news
      resources :player
      resources :team
    end
  end
  
  devise_for :users, controllers: {sessions: 'sessions'}, defaults: { format: 'json' }
  get '(*path)', to: 'application#app'
end
