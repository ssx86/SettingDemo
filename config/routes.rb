Rails.application.routes.draw do
  resources :sections
  resources :sub_menus
  resources :top_menus

  get '/menu_tree', to: 'top_menus#tree'
  get '/sub_menus/:id/sections', to: 'sections#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
