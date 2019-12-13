Rails.application.routes.draw do
  devise_for :users, controllers: {sessions: 'sessions'}

  namespace :api do
    namespace :mendil do
      resources :users
      resources :news
      resources :player
      resources :team
    end
  end

  get '(*/path)', to: 'application#app'
end
