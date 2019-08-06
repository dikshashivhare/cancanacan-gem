Rails.application.routes.draw do
  resources :products
  devise_for :users
  root to: "home#index"
  get 'home/role_privilage' => "home#role_privilage"
  get 'home/user_privilage' => "home#user_privilage"
  get 'home/set_role_permissions' => "home#set_role_permissions"
  get 'home/set_user_permissions' => "home#set_user_permissions"
end
