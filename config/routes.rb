Rails.application.routes.draw do
  devise_for :users  
  resources :topics do
    resources :messages
  end
  root "topics#index"
end
