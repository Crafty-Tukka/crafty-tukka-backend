Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  scope '/events' do
    root to: 'events#index'
    post '/venuecreate', to: 'events#venuecreate'
    post '/truckcreate', to: 'events#truckcreate'
    scope '/venues' do
      get '/:id', to: "venues#venue_events"
      get '/:id/pending', to: "venues#pending_venue_events"
    end
    scope 'foodtrucks' do
      get '/:id', to: "trucks#truck_events"
      get '/:id/pending', to: "trucks#pending_truck_events"
    end
    get '/:id', to: 'events#show'
    put '/:id', to: 'events#update'
    delete '/:id', to: 'events#destroy'
  end
  get '/venues', to: "venues#index"
  get '/venues/:id', to: "venues#show"
  delete "/venues/:id", to: "venues#destroy"
  get '/foodtrucks', to: "trucks#index"
  get '/foodtrucks/:id', to: "trucks#show"
  delete "/foodtrucks/:id", to: "trucks#destroy"
  scope '/auth' do
    post "/venues/signup", to: "venues#create"
    post "/venues/signin", to: "venues#sign_in"
    put "/venues/:id", to: "venues#update"
    post "/foodtrucks/signup", to: "trucks#create"
    post "/foodtrucks/signin", to: "trucks#sign_in"
    put "/foodtrucks/:id", to: "trucks#update"
  end
end
