Rails.application.routes.draw do
  get '/dogs' => 'dogs#index'
  get '/dogs/:id' => 'dogs#show'
  post '/dogs' => 'dogs#create'
  patch '/dogs/:id' => 'dogs#update'
  delete '/dogs/:id' => 'dogs#destroy'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
