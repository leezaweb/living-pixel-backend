class Api::V1::SectionStylesController < ApplicationController
  def index
    render json: SectionStyle.all
  end

  def show
    render json: SectionStyle.find(params[:id])
  end

  def update
    section_style = SectionStyle.find(params[:id])
    params.reject{|k|["controller", "action","id","section_style","editorState"].include?(k)}.each do |k|
      if k.include?("border") && k.include?("style") && params[k]=="none"
        section_style[k.sub("style","width")]=0
      end

      if k[0].include?("background_repeat") && !params[k[0]].include?("no")
        # byebug
        section_style.update!(background_size:"25%")
      end

      section_style[k[0].to_sym] = params[k[0]]
      section_style.save
    end
  end

end
