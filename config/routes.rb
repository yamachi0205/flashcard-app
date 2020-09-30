Rails.application.routes.draw do
 
  devise_for :users
  root to: "flashcards#index"
  resorces :words
  resorces :flashcards
end
