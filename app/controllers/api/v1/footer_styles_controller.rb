class Api::V1::FooterStylesController < ApplicationController

  def index
    render json: FooterStyle.all
  end

  def show
    render json: FooterStyle.find(params[:id])
  end

  def update
    footer_style = FooterStyle.find(params[:id])
    params.reject{|k|["controller", "action","id","footer_style","editorState"].include?(k)}.each do |k,v|
      puts "%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%#{k}"
      puts "%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%#{v}"
      footer_style[k] = v
      footer_style.save
    end
  end
end
