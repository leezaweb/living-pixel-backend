Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      get 'published-sites/:url' => 'sites#published', :as => 'published'
      resources :sites
      resources :body_styles
      resources :body
      resources :element_styles
      resources :elements
      resources :footer_styles
      resources :footers
      resources :header_styles
      resources :headers
      resources :section_elements
      resources :section_styles
      resources :sections
      resources :teams
      resources :users
    end
  end
end
