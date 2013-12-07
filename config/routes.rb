IslSite::Application.routes.draw do
  resources :news_articles

  get '/search', to: 'search#index'
  
  comfy_route :cms_admin
  # Make sure this routeset is defined last
  comfy_route :cms, :path => '/', :sitemap => false
end
