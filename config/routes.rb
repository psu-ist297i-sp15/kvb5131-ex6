Rails.application.routes.draw do
  devise_for :users
  resources :topics
  resources :topics do
    member do
      post 'upvote'
      post 'downvote'
    end
  end
  
  root 'topics#index'
end
