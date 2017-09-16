Rails.application.routes.draw do
  resources :songs
  scope '(:locale)', locale: /fr|en/ do
    get 'home/index'
    resources :songs
    resources :playlists

    root 'playlists#index'
  end
end
