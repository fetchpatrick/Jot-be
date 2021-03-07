Rails.application.routes.draw do
      post '/login', to:'auth#create'
      
      resources :users
      resources :jots
      
   
end
