Rails.application.routes.draw do
  root  'trainings#trainings'

  get   'trainings'  =>   'trainings#trainings'
  get  'new' => 'trainings#new'
  post 'trainings' => 'trainings#create'
  get   '/show/:id' =>   'trainings#show'

end
