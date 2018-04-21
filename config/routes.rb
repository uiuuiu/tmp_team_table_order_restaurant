Rails.application.routes.draw do
  mount Ckeditor::Engine => '/ckeditor'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  resources :home
  resources :tables
  resources :menu_grid
  resources :menu_list
  resources :about_us
  resources :galary
  resources :events
  resources :blogs
  resources :blog_galary
  resources :blog_details
  resources :contact_us

  namespace :admin do
    resources :admin_home
    resources :tables
  end
end