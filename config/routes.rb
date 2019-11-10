Rails.application.routes.draw do
  devise_for :users, controllers: {sessions: 'sessions'}

  namespace :api do
    namespace :mendil do
      resources :users
    end
  end
end
