IslSite::Application.routes.draw do
  comfy_route :blog_admin, :path => '/admin'
  comfy_route :blog, :path => '/blog'

  resources :posts

  get '/search', to: 'search#index'

  resources 'posts', :only => [:index, :show]
  
  namespace :admin do
    resources :posts
  end

  comfy_route :cms_admin
  # Make sure this routeset is defined last
  comfy_route :cms, :path => '/', :sitemap => false
end
