Rails.application.routes.draw do
  root "demo#index"
  #simple routing
  #get 'demo/index'

	#default routing. put at the end of this file
  match ':controller(/:action(/:id))', :via => :get

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
