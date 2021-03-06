class Api::V1::ElementStylesController < ApplicationController

  def index
    render json: ElementStyle.all
  end

  def show
    render json: ElementStyle.find(params[:id])
  end

  def update
    element_style = ElementStyle.find(params[:id])

    params.reject{|k|["controller", "action","id","element_style","editorState"].include?(k)}.each do |k|
      if k.include?("border") && k.include?("style") && params[k]=="none"
        element_style[k.sub("style","width").to_sym]=0
        element_style.save
      end

      puts "%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%#{k[0].to_sym}"
      puts "%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%#{params[k]}"
      element_style[k[0].to_sym] = params[k[0]]
      puts "%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%#{element_style[k[0].to_sym]}"
      element_style.save
    end
  end
end
