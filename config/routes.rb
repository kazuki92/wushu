Rails.application.routes.draw do
  devise_for :users
  root  'trainings#index'
  resources :trainings 

end
