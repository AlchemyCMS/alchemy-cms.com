AlchemyCmsCom::Application.routes.draw do
  resources :showcases,  only: [:index, :new, :create]
  resources :extensions, only: [:index, :show, :new, :create]
  namespace :admin do
    resources :extensions
    resources :showcases
  end
  mount Alchemy::Engine => "/"
end
