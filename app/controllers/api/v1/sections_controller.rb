class Api::V1::SectionsController < ApplicationController
  def index
    element_style_ids = ElementStyle.all.map{|x|x.element_id}
    Element.all.each do |y|
      y.destroy if !element_style_ids.include?(y.id)
    end

    section_style_ids = SectionStyle.all.map{|x|x.section_id}
    Section.all.each do |y|
      y.destroy if !section_style_ids.include?(y.id)
    end

    header_style_ids = HeaderStyle.all.map{|x|x.header_id}
    Header.all.each do |y|
      y.destroy if !header_style_ids.include?(y.id)
    end

    footer_style_ids = FooterStyle.all.map{|x|x.footer_id}
    Footer.all.each do |y|
      y.destroy if !footer_style_ids.include?(y.id)
    end

    body_style_ids = BodyStyle.all.map{|x|x.body_id}
    Body.all.each do |y|
      y.destroy if !body_style_ids.include?(y.id)
    end

    render json: Section.all
  end



  def show
    render json: Section.find(params[:id])
  end
end
