Rails.application.routes.draw do
    root to: 'homes#top'
    # get 'homes/top'ではなく.com/でトップ画面を表示するルーティング
  get 'books' => 'books#index'
  post 'books' => 'books#create'
  post 'create' => 'books#create'
  get ':id' => 'books#show', as: 'book'
  get ':id/edit' => 'books#edit', as: 'edit_book'
  patch ':id' => 'books#update', as: 'update_book'
  delete ':id' => 'books#destroy', as: 'destroy_book'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
