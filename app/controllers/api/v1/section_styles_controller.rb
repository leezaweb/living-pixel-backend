class Api::V1::SectionStylesController < ApplicationController
  def index
    render json: SectionStyle.all
  end

  def show
    render json: SectionStyle.find(params[:id])
  end

  def update
    section_style = SectionStyle.find(params[:id])
    params.reject{|k|["controller", "action","id","section_style","editorState"].include?(k)}.each do |k,v|
      puts "%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%#{k}"
      puts "%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%#{v}"
      section_style[k] = v
      section_style.save
    end
  end
end
