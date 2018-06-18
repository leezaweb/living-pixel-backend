class Api::V1::FooterStylesController < ApplicationController

  def index
    render json: FooterStyle.all
  end

  def show
    render json: FooterStyle.find(params[:id])
  end

  def update
    footer_style = FooterStyle.find(params[:id])
    params.reject{|k|["controller", "action","id","footer_style","editorState"].include?(k)}.each do |k|
      puts "%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%#{k}"

      footer_style[k[0].to_sym] = params[k[0]]
      footer_style.save
    end
  end
end
