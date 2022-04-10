Rails.application.routes.draw do
    root to: 'homes#top'
    # get 'homes/top'ではなく.com/でトップ画面を表示するルーティング
  get 'index' => 'books#index'
  post 'books' => 'books#create'
  get 'show' => 'books#show'
  get 'edit' => 'books#edit'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
