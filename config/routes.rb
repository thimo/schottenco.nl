Rails.application.routes.draw do
  devise_for :users
  root to: 'content_pages#placeholder'

  get 'admin' => 'admin#show'
  namespace :admin do
    resources :content_texts
    resources :content_pages
    resources :content_blogs
    resources :content_news_items
    resources :content_newsletters
    resources :content_images
  end

  get '/*slug', to: 'content_pages#show' #, as: :page

  get '/nieuws/:id', to: 'content_news_item#show', as: 'content_news_item'
  get '/blog/:id', to: 'content_blog#show', as: 'content_blog'
end
