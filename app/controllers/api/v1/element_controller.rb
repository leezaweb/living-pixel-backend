class Api::V1::ElementsController < ApplicationController
  def index
    render json: Element.all
  end
end
