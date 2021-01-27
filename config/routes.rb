Rails.application.routes.draw do
  
  root 'pages#index'

  namespace :api do
    namespace :v1 do
      # we can use slug value instead of using id as primery value params for teachers in routing
        resources :teachers, param: :slug
        resources :reviews, only: [:create, :destroy]
    
    end 
  end 
  # route request that arent for existing path pre-defined api back to  index path
  # it will help to handle rouuting to react component without interfering with our actual routes for our api
  get '*path', to: 'pages#index', via: :all
end
