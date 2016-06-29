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
  end

  get '/*slug', to: 'content_pages#show' #, as: :page

end
