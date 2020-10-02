Rails.application.routes.draw do
 
  devise_for :users
  root to: "flashcards#index"
  
  resources :flashcards do
    resources :words
  end
  
end
