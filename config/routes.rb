Rails.application.routes.draw do
  devise_for :users, :controllers => { registrations: 'devise_registrations' }
  root to: 'content_pages#index'

  get 'admin' => 'admin#show'
  namespace :admin do
    resources :agenda_items, shallow: true do
      resources :bookings
    end
    resources :locations
    resources :users
    resources :content_texts
    resources :content_pages
    resources :content_blogs
    resources :content_news_items
    resources :content_newsletters
    resources :content_images
    resources :contacts
  end

  get '/nieuws', to: 'content_news_items#index', as: 'content_news_items'
  get '/nieuws/:id', to: 'content_news_items#show', as: 'content_news_item'
  get '/blog', to: 'content_blogs#index', as: 'content_blogs'
  get '/blog/:id', to: 'content_blogs#show', as: 'content_blog'
  get '/agenda', to: 'agenda_items#index', as: 'agenda_items'
  get '/agenda/:id', to: 'agenda_items#show', as: 'agenda_item'
  get '/nieuwsbrief', to: 'content_newsletters#index', as: 'content_newsletters'
  get '/nieuwsbrief/:id', to: 'content_newsletters#show', as: 'content_newsletter'
  get '/contact/formulier', to: 'contacts#new', as: 'new_contact'
  post '/contact/formulier', to: 'contacts#create', as: 'contacts'

  get '/agenda/:agenda_item_id/aanmelden', to: 'bookings#new', as: 'new_agenda_item_booking'
  post '/agenda/:agenda_item_id/aanmelden', to: 'bookings#create', as: 'agenda_item_bookings'
  # Clashes with Devise:
  # get '/aanmelding/:id', to: 'bookings#show', as: 'booking'

  # /uploads/block/image/1/default_7fd5acc8-5c06-4dcc-955e-f4fc5f76be01.jpg
  get '/uploads/:klass/:field/:id/(:version)_(:file)',
      to: 'missing#show',
      constraints: {
          klass: /\D*/,   # anything but numbers
          id: /\d*/,      # numbers only
          version: /[^\_]+/     # exclude underscores
      }

  get '/*slug', to: 'content_pages#show' #, as: :page

end
