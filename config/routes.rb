Rails.application.routes.draw do
  resources :events do
    get '/venue/:id', to: "events#venue_events"
    get '/venue/:id/pending', to: "events#pending_venue_events"
    get '/foodtruck/:id', to: "events#foodtruck_events"
    get '/foodtruck/:id/pending', to: "events#pending_foodtruck_events"
  end

  get '/venues', to: "venues#index"
  get '/venues/:id', to: "venues#show"

  get '/foodtrucks', to: "trucks#index"
  get '/foodtrucks/:id', to: "trucks#show"

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  
  scope '/auth' do
    post "/venue/signup", to: "venues#create"
    post "/venue/signin", to: "venues#sign_in"
    put "/venue/:id", to: "venues#update"
    post "/foodtruck/signup", to: "trucks#create"
    post "/foodtruck/signin", to: "trucks#sign_in"
    put "/foodtruck/:id", to: "trucks#update"

  end
end
