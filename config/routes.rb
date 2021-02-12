Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  get '/conversations', to: 'conversations#index'
  get '/conversations/new', to: 'conversations#new'
  post '/conversations', to: 'conversations#create'
  get '/conversations/:id', to: 'conversations#show'

  get '/conversations/:id/messages/new', to: 'messages#new'
  post '/conversations/:id/messages', to: 'messages#create'

end
