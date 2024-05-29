Rails.application.routes.draw do
  get '/books' => 'books#index'
  get 'books/:id' => 'books#show', as: 'show_book'
  get 'books/:id/edit' => 'books#edit', as: 'edit_book'
  get '/top' => 'homes#top'
  root to: 'homes#top'
  post '/books' => 'books#create'
  patch '/books/:id' => 'books#update', as: 'update_book'
  delete 'books/:id' => 'books#destroy', as: 'destroy_book'

end
