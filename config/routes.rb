AlchemyCmsCom::Application.routes.draw do
  resources :extensions
  namespace :admin do
    resources :extensions
  end
  mount Alchemy::Engine => "/"
end
