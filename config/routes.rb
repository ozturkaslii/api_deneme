Rails.application.routes.draw do
  resources :contacts
  namespace :api, :defaults => {:format => :json} do


   root to: 'contacts#index'
   post '/contacts', to: 'contacts#create'
   get "/contacts/:id", to: "contacts#show"
   put "/contacts/:id", to: "contacts#update"
   delete "/contacts/:id", to: "contacts#destroy"
  end
end
