Rails.application.routes.draw do

  get '/' => 'people#home'
  post '/search' => 'people#search'

  resources :people do 
    resources :emails
    resources :phones
  end


end
