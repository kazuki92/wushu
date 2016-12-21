Rails.application.routes.draw do
  root  'trainings#create'
  post 'trainings' => 'trainings#create'
end
