module Discord
  class Endpoints < Potter::Endpoints
    resources :channels do
      resources :invites,     only: [:create, :index]
      resources :permissions, only: [:destroy]
      resources :followers,   only: [:create]
      resource  :typing,      only: [:create]
      resources :pins,        only: [:index]
    end
  end
end
