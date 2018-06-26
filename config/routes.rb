Rails.application.routes.draw do
  # You can have the root of your site routed with "root"
  root to: 'welcome#home'
  get  'welcome/home'
  get  'welcome/avatar_show'
  devise_for :users, controllers: {
        sessions: 'users/sessions',
        passwords: 'users/passwords',
        registrations: 'users/registrations'
    }
    resources :users, :controller => "users"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
