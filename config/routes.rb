Rails.application.routes.draw do
  namespace :api do
    post 'user/create', to: 'user#create' 
    post 'user/update', to: 'user#update' 
  end

  root 'application#index'
  get '/*path', to: 'application#index' 
end
