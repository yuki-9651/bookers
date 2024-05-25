Rails.application.routes.draw do
  get '/new' => 'book#new'
  get '/index' => 'book#index'
  get 'book/:id' => 'book#show', as: 'show_book'
  get '/edit' => 'book#edit'
  get '/top' => 'homes#top'
  
  post '/create' => 'book#create'
  delete 'book/:id' => 'book#destroy', as: 'destroy_book'

end
