Rails.application.routes.draw do
 	
 	#get 'department#new', as: 'dept'


	get '/departments/:id', to: 'departments#show', as: 'dept'

  root 'departments#new'

  devise_for :users

  resources :departments
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
