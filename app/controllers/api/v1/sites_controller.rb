class Api::V1::SitesController < ApplicationController
  def index
    render json: Site.all
  end

  def show
    render json: Site.find(params[:id])
  end

end
