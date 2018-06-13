class Api::V1::SectionElementsController < ApplicationController
  def index
    render json: SectionElement.all
  end

end
