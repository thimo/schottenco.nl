Rails.application.routes.draw do
  devise_for :users
  root to: 'content_pages#placeholder'

  get 'admin' => 'admin#show'
  namespace :admin do
    resources :agenda_items
    resources :locations
    resources :content_texts
    resources :content_pages
    resources :content_blogs
    resources :content_news_items
    resources :content_newsletters
    resources :content_images
  end

  get '/nieuws/:id', to: 'content_news_items#show', as: 'content_news_items'
  get '/blog/:id', to: 'content_blogs#show', as: 'content_blogs'
  get '/agenda', to: 'agenda_items#index', as: 'agenda_items'
  get '/agenda/:id', to: 'agenda_items#show', as: 'agenda_item'
  get '/blog', to: 'blogs#index', as: 'blogs'
  get '/blog/:id', to: 'blog#show', as: 'blog'

  get '/*slug', to: 'content_pages#show' #, as: :page

end
