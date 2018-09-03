Rails.application.routes.draw do
  namespace :api do
    get "/parks" => 'parks#index'
    post "/parks" => 'parks#create'
    get "/parks/:id" => 'parks#show'
    patch "/parks/:id" => 'parks#update'
    delete "/parks/:id" => 'parks#destroy'
  end 
end
