class Api::V1::ElementsController < ApplicationController
  def index
    render json: Element.all
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


  def show
    render json: Element.find(params[:id])
  end

  def create
    element = Element.find(params[:id])
    new_element = element.dup
    new_element.element_style.update!(
      grid_row_start:element.element_style.grid_row_end + 1
    )

    new_element.element_style.update!(
      grid_row_end:
      element.element_style.grid_row_end - element.element_style.grid_row_start + element.element_style.grid_row_start + 1
    )

    new_element.save
    puts "%%%%%%%%%%%%%%%%%#{element.section_elements.size}%%%%%%%%%%%%%%%%%%"
  end

  def destroy
    Element.find(params[:id]).destroy
  end
end
