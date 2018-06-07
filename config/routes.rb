Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      resources :body_properties
      resources :body
      resources :element_properties
      resources :elements
      resources :footer_properties
      resources :footers
      resources :header_properties
      resources :headers
      resources :section_properties
      resources :sections
      resources :sites
      resources :teams
      resources :users

    end
  end
end
