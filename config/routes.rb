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
  get 'users/index'
  post 'users/index'
  get 'users/giveuserrole'
  post 'users/giveuserrole'
  get 'users/givesupervisorrole'
  post 'users/givesupervisorrole'
  get 'users/givenemorole'
  post 'users/givenemorole'
  get 'users/dropallroles'
  post 'users/dropallroles'
  get 'users/dropuser'
  post 'users/dropuser'
  get 'users/givesuperadminrole'
  post 'users/givesuperadminrole'
  get 'users/edit'
  post 'users/edit'
  get 'users/update'
  post 'users/update'
  get 'users/new'
  post 'users/new'
  get 'users/create'
  post 'users/create'
  put 'users/create'  
  resources :users, :controller => "users"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
