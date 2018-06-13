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
      puts "%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%#{k}"
      puts "%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%#{v}"
      element_style[k] = v
      element_style.save
    end

    if params[:name] && params[:value]
      element_style[params[:name]] = params[:value]
    end

    element_style.save!
    puts element_style.inspect
  end

end
