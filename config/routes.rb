Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :donations
  resources :pictures
  resources :comments do
    get :find_comments_for_donate, on: :collection
  end
end
