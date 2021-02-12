Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  resources :conversations, only: [:index, :new, :create, :show] do
    resources :messages, only: [:new, :create]
  end
end
