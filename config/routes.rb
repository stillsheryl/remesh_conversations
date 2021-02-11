Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  get '/conversations', to: 'conversations#index'
  get '/conversations/new', to: 'conversations#new'
  post '/conversations', to: 'conversations#create'
  get '/conversations/:id', to: 'conversations#show'

end
