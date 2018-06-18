class Api::V1::HeaderStylesController < ApplicationController

  def index
    render json: HeaderStyle.all
  end

  def show
    render json: HeaderStyle.find(params[:id])
  end

  def update
    header_style = HeaderStyle.find(params[:id])
    params.reject{|k|["controller", "action","id","header_style","editorState"].include?(k)}.each do |k|
      puts "%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%#{k}"
      
      header_style[k[0].to_sym] = params[k[0]]
      header_style.save
    end
  end
end
