class ApplicationController < ActionController::API

  rescue_from ActiveRecord::RecordNotFound, :with => :rescue404
  rescue_from ActionController::RoutingError, :with => :rescue404

 def rescue404
   redirect_to api_v1_site_path(Site.find(1))
 end
end
