class Api::V1::SectionsController < ApplicationController
  def index
    render json: Section.all
  end



  def show
    render json: Section.find(params[:id])
  end
end
