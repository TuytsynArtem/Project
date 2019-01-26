Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :users
  get '/new',to:'users#new'
  root 'users#main'
  get 'signup',to:'users#signup'
  get '/:id',to:'users#show'
  post 'signup',to: 'users#check'



  resources :courses
end
