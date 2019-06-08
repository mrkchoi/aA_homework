Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :users, only: [:new, :create, :show]
  resource :session, only: [:new, :create, :destroy]
  resources :bands do
    resources :albums, only: [:new]
  end

  resources :albums, except: [:new] do
    resources :tracks, only: [:new]
  end

  resources :tracks, except: [:new, :index]

end



# new_album_track GET    /albums/:album_id/tracks/new(.:format) tracks#new
#          tracks POST   /tracks(.:format)                      tracks#create
#      edit_track GET    /tracks/:id/edit(.:format)             tracks#edit
#           track GET    /tracks/:id(.:format)                  tracks#show
#                 PATCH  /tracks/:id(.:format)                  tracks#update
#                 PUT    /tracks/:id(.:format)                  tracks#update
#                 DELETE /tracks/:id(.:format)                  tracks#destroy



# bands     GET    /bands(.:format)                       bands#index
#           POST   /bands(.:format)                       bands#create
# new_band  GET    /bands/new(.:format)                   bands#new
# edit_band GET    /bands/:id/edit(.:format)              bands#edit
# band      GET    /bands/:id(.:format)                   bands#show
#           PATCH  /bands/:id(.:format)                   bands#update
#           PUT    /bands/:id(.:format)                   bands#update
#           DELETE /bands/:id(.:format)                   bands#destroy



# new_band_album GET    /bands/:band_id/albums/new(.:format)   albums#new
#         albums POST   /albums(.:format)                      albums#create
#     edit_album GET    /albums/:id/edit(.:format)             albums#edit
#          album GET    /albums/:id(.:format)                  albums#show
#                PATCH  /albums/:id(.:format)                  albums#update
#                PUT    /albums/:id(.:format)                  albums#update
#                DELETE /albums/:id(.:format)                  albums#destroy