Rails.application.routes.draw do

  get '/' => 'people#home'
  post '/search' => 'people#search'

  resources :people

end
