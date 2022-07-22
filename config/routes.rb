Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  scope '/events' do
    root to: 'events#index'
    post '/', to: 'events#create'
    scope '/venue' do
      get '/:id', to: "venues#venue_events"
      get '/:id/pending', to: "venues#pending_venue_events"
    end
    scope 'foodtruck' do
      get '/:id', to: "trucks#truck_events"
      get '/:id/pending', to: "trucks#pending_truck_events"
    end
    get '/:id', to: 'events#show'
    put '/:id', to: 'events#update'
    delete '/:id', to: 'events#destroy'
  end
  get '/venues', to: "venues#index"
  get '/venues/:id', to: "venues#show"
  get '/foodtrucks', to: "trucks#index"
  get '/foodtrucks/:id', to: "trucks#show"
  scope '/auth' do
    post "/venue/signup", to: "venues#create"
    post "/venue/signin", to: "venues#sign_in"
    put "/venue/:id", to: "venues#update"
    post "/foodtruck/signup", to: "trucks#create"
    post "/foodtruck/signin", to: "trucks#sign_in"
    put "/foodtruck/:id", to: "trucks#update"
  end
end
