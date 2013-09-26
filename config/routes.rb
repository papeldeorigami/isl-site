IslSite::Application.routes.draw do
  resources :news_articles

  get '/search', to: 'pages#index'

  ComfortableMexicanSofa::Routing.admin(:path => '/cms-admin')
  
  # Make sure this routeset is defined last
  ComfortableMexicanSofa::Routing.content(:path => '/', :sitemap => false)
end
