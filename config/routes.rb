Rails.application.routes.draw do
  resources :podcasts
  resources :posts

  resources :donations do
    post :donate, on: :collection
  end
  resources :pictures
  resources :comments do
    get :find_comments_for_donation, on: :collection
  end
end
