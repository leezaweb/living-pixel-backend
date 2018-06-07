class Api::V1::SitesController < ApplicationController
  def index
    # render json: Site.all, each_serializer: SiteSerializer
    render json: Site.all
  end
end
