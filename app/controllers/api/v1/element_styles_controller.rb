class Api::V1::ElementStylesController < ApplicationController

  def index
    render json: ElementStyle.all
  end

  def show
    render json: ElementStyle.find(params[:id])
  end

  def update
    element_style = ElementStyle.find(params[:id])

    params.reject{|k|["controller", "action","id","element_style","editorState"].include?(k)}.each do |k,v|
      if k.include?("border") && k.include?("style") && params[k]=="none"
        element_style[k.sub("style","width").to_sym]=0
        element_style.save
      end
      element_style.update!(background_size:"") if k.include?("background_repeat") && params[k]=="repeat"
      puts "%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%#{k.to_sym}"
      puts "%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%#{params[k]}"
      element_style[k.to_sym] = params[k]
      puts "%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%#{element_style[k.to_sym]}"
      element_style.save
    end
  end
end
