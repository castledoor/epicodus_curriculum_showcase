Wikipages::Application.routes.draw do
  get 'contacts', :to => 'contacts#index'
  get 'contacts/new', :to => 'contacts#new'
  get 'contacts/:id', :to =>'contacts#show'
  get 'contacts/:id/edit', :to => 'contacts#edit'
  post 'contacts', :to => 'contacts#create'
  patch 'contacts/:id', :to => 'contacts#update'
  resources :contacts

  root :to => 'contacts#index'
end
