Rails.application.routes.draw do
    scope ":locale" do  
      resources :users
      resources :gyms
    end
    resource :confirmation, :only => [:show]
    resource :user_sessions, :only => [:create, :new, :destroy]
    root 'home#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
