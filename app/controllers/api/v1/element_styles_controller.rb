class Api::V1::ElementStylesController < ApplicationController

  def index
    render json: ElementStyle.all
  end

  def show
    render json: ElementStyle.find(params[:id])
  end

  def update
    puts "%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%#{params.keys}"
    element_style = ElementStyle.find(params[:id])

    params.reject{|k|["controller", "action","id","element_style","editorState"].include?(k)}.each do |k,v|
      if k.include?("border") && k.include?("style") && params[k]=="none"
        element_style[k.sub("style","width")]=0
      end
      element_style.background_size="" if k.include?("background_repeat") && params[k]=="repeat"
      element_style[k] = params[k]
      element_style.save
    end
  end
end
