class Api::V1::ElementsController < ApplicationController
  def index
    render json: Element.all
  end
  def show
    render json: Element.find(params[:id])
  end


  def update

    puts "%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%#{params[:inner_text]}"
    element = Element.find(params[:id])
    element.update(inner_text: params[:inner_text])
    element.inner_text = params[:inner_text]
    element.save!
    puts element.inspect
  end
end
