Rails.application.routes.draw do
  namespace :admin do
    get 'registrations/index'
  end

  namespace :admin do
    get 'registrations/show'
  end

  get 'registrations/new'
  get 'registrations/show'

  devise_for :users
  root to: 'content_pages#index'

  get 'admin' => 'admin#show'
  namespace :admin do
    resources :agenda_items, shallow: true do
      resources :registrations, only: [:index, :show]
    end
    resources :locations
    resources :users
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

  get '/agenda/:agenda_item_id/aanmelden', to: 'registrations#new', as: 'new_agenda_item_registration'
  post '/agenda/:agenda_item_id/aanmelden', to: 'registrations#create', as: 'agenda_item_registrations'
  get '/aanmelding/:id', to: 'registrations#show', as: 'registration'

  get '/*slug', to: 'content_pages#show' #, as: :page

end
