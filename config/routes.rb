Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      resources :body_styles
      resources :body
      resources :element_styles
      resources :elements
      resources :footer_styles
      resources :footers
      resources :header_styles
      resources :headers
      resources :section_styles
      resources :sections
      resources :sites
      resources :teams
      resources :users

    end
  end
end
