Rails.application.routes.draw do
  get '/new' => 'book#new'
  get '/index' => 'book#index'
  get '/show' => 'book#show'
  get '/edit' => 'book#edit'
  get '/top' => 'homes#top'
  
  post '/create' => 'book#create'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
