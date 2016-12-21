Rails.application.routes.draw do
  root  'trainings#index'
  get 'trainings' => 'trainings#index'
end
