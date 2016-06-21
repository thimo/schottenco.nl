Rails.application.routes.draw do
  root to: 'pages#index'

  # root to: "cms/content#show"

  # comfy_route :cms_admin, :path => '/admin'

  # Make sure this routeset is defined last
  # comfy_route :cms, :path => '/', :sitemap => false

  get '/*slug', to: 'pages#show' #, as: :page

end
