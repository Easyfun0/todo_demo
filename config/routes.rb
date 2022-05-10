Rails.application.routes.draw do
  resources :todo_lists do
    resources :todo_items
  end
  namespace :todo_list do
    resources :todo_items
  end
  get '/books/new', to:'books#new', as: 'new_book'
  post '/books', to:'books#create'
  get '/books/:id', to:'books#show', as: 'book'
  get '/books/:id/edit', to:'books#edit', as:'edit_book'
  patch '/books/:id',to:'books#update'
  delete '/books/:id',to:'books#destroy'


  root 'books#index'
end
