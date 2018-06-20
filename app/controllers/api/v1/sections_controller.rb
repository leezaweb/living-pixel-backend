class Api::V1::SectionsController < ApplicationController
  def create
    puts "%%%%%%%%%#{params}%%%%%%%%%%"
    case params[:key]
    when "M7"
        puts "%%%%%%%%%#{params[:key]}%%%%%%%%%%"
        # byebug
        if params[:section]
          section_sequence = Section.find(params[:section].to_i).sequence - 1
        else
          section_sequence = 0
        end

        new_section = Section.create(sequence:section_sequence,site_id:params[:site])

        new_style = SectionStyle.create(section_id:new_section.id)

        new_style.attributes.reject{|k|["id", "section_id"].include?(k)}.each do |attribute|

          if attribute[0].include?("width") || attribute[0].include?("radius")
            new_style[attribute[0].to_sym] = 0
            new_style.save
          elsif attribute[0].include?("height")
          # byebug
            new_style[attribute[0].to_sym] = 50
            new_style.save
          else
            new_style[attribute[0].to_sym] = ""
            new_style.save
          end
      end
    end
  end

  def update
    section = Section.find(params[:id])

    if params[:over]
      over = Section.find(params[:over])
      # byebug
      section.update!(sequence: over.sequence - 1)

    end

    if params[:background_image]
      section.section_style.update(background_image: params[:background_image])
      section.section_style.background_image = "url('#{params[:background_image]}')"
      section.section_style.save
      section.save!
    end



  end

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
