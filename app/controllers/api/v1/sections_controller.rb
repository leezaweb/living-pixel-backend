class Api::V1::SectionsController < ApplicationController
  def index
    render json: Section.all
  end
end
