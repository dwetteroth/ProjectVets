Rails.application.routes.draw do

	#Casein routes
	namespace :casein do
		resources :pages
		resources :globals
		resources :homepages
	end

  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
  root 'welcome#index'
	get '/help' => 'page#help'
	get '/who' => 'page#who'
	post '/newsletter/signup' => 'page#newsletter'
	get '/mission' => 'page#mission'
	get '/history' => 'page#history'
	get '/board' => 'page#board'
	get '/staff' => 'page#staff'

	get '/partners' => 'page#partners'
	get '/donors' => 'page#donors'
	get '/reports' => 'page#reports'
	get '/donations' => 'page#donations'

	get '/donate' => 'page#donate'
	get '/donations' => 'page#donate'
	get '/celebration' => 'page#celebration'
	get '/donate-equipment' => 'page#equipment'
	get '/assistance' => 'page#assistance'
	get '/donate-vehicle' => 'page#vehicle'




	get '/shop' => 'page#shop'
	get '/volunteer' => 'page#volunteer'

	get '/by-name' => 'page#by_name'
	get '/world-map' => 'page#world_map'

	get '/gallery' => 'page#gallery'

	get '/contact' => 'page#contact'


	get '/recipients' => 'page#recipients'



end
