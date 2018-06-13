class Api::V1::ElementsController < ApplicationController
  def index
    render json: Element.all
  end
  def show
    render json: Element.find(params[:id])
  end

  def create
    element = Element.find(params[:id])
    element.dup
    element.save
    puts "%%%%%%%%%%%%%%%%%#{element.section_elements.size}%%%%%%%%%%%%%%%%%%"
  end


  def destroy
    byebug
    Element.find(params[:id]).destroy
  end

  def update
    puts "%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%#{params[:inner_text]}"
    element = Element.find(params[:id])
    element.update(inner_text: params[:inner_text])
    element.inner_text = params[:inner_text]
    puts "%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%#{element.inspect}"
    puts "%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%#{Element.count}"
    element.save!
  end
end
