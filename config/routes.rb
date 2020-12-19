Rails.application.routes.draw do
  namespace :api do
    # api routes here
  end

  root 'application#index'
  get '/*path', to: 'application#index' 
end
