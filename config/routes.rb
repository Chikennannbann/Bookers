Rails.application.routes.draw do
    root to: 'homes#top'
    # get 'homes/top'ではなく.com/でトップ画面を表示するルーティング
    resources :books

end
