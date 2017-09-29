Rails.application.routes.draw do
	root 'static_pages#home'
	get  '/about',   to: 'static_pages#about'

	get 'welcome/index'

	resources :articles do
		resources :comments
	end
	
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
