Isl::Application.routes.draw do
  resources :posts

  get '/home/' => "static_pages#home"
  get '/static_pages/home'

  get '/institutional' => "static_pages#institutional"
  get '/static_pages/institutional'

  get "static_pages/projects"

  get "static_pages/team"

  get "static_pages/gallery"

  get "static_pages/contact"

  root :to => 'static_pages#home'
end
