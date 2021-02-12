Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  resources :conversations, only: [:index, :new, :create, :show] do
    resources :messages, only: [:new, :create] do
    end
  end

  get '/conversations/:conversation_id/messages/:message_id/thoughts/new', to: 'thoughts#new'
  post '/conversations/:conversation_id/messages/:message_id/thoughts', to: 'thoughts#create'
end
