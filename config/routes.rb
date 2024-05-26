Rails.application.routes.draw do
  get '/new' => 'book#new'
  get '/index' => 'book#index'
  get 'book/:id' => 'book#show', as: 'show_book'
  get 'book/:id/edit' => 'book#edit', as: 'edit_book'
  get '/top' => 'homes#top'
  
  post '/create' => 'book#create'
  delete 'book/:id' => 'book#destroy', as: 'destroy_book'

end
