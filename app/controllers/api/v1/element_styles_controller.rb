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
      if k.include?("grid_column_start")
        element_style[k] = params[k]
      else
        element_style[k] = params[k]
        element_style.save
      end
    end

    if params[:name] && params[:value]
      element_style[params[:name]] = params[:value]
    end

    element_style.save!
    puts element_style.inspect
  end

end
