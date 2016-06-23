Rails.application.routes.draw do
  root to: 'pages#index'

  get 'admin' => 'admin#show'
  namespace :admin do
    resources :content_texts
  end

  get '/*slug', to: 'pages#show' #, as: :page

end
