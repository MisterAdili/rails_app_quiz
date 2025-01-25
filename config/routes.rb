Rails.application.routes.draw do
  root "homepage#index"

  post 'jobs' => 'jobs#create'
  get "jobs/:id" => "jobs#show"
  get "jobs" => "jobs#index"
end
