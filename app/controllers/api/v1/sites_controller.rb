class Api::V1::SitesController < ApplicationController
  def index
    clean
    render json: Site.all
  end

  def show
    element_style_ids = ElementStyle.all.map{|x|x.element_id}
    Element.all.each do |y|
      y.destroy if !element_style_ids.include?(y.id)
    end
    render json: Site.find(params[:id])
  end

  def create
    # byebug
    puts "%%%%%%%%%%%%%%%%%%%%%%%#{params.keys}"
    current_site = Site.find(params[:site].to_i)
    key_site = Site.find_by(key: params[:key])

    current_site.sections.each do |section|
      section.delete
    end



    key_site.sections.each do |section|
      new_section = section.dup
      new_section.section_style = section.section_style.dup
      new_section.save

      section.elements.each do |element|
        new_element = element.dup
        new_element.save

        new_section.elements << new_element
        new_section.save
      end

      current_site.sections << new_section
      current_site.save
    end

    # byebug

    new_b = key_site.body.dup
    new_b.site_id = current_site.id
    new_b.save

    new_bs = key_site.body_style.dup
    new_bs.body_id = new_b.id
    new_bs.save

    new_h = key_site.header.dup
    new_h.site_id = current_site.id
    new_h.save

    new_hs = key_site.header_style.dup
    new_hs.header_id = new_h.id
    new_hs.save

    new_f = key_site.footer.dup
    new_f.site_id = current_site.id
    new_f.save

    new_fs = key_site.footer_style.dup
    new_fs.footer_id = new_f.id
    new_fs.save




    current_site.save


  end



def clean
#     element_style_ids = ElementStyle.all.map{|x|x.element_id}
#     Element.all.each do |y|
#       y.destroy if !element_style_ids.include?(y.id)
#     end
#
#     section_style_ids = SectionStyle.all.map{|x|x.section_id}
#     Section.all.each do |y|
#       y.destroy if !section_style_ids.include?(y.id)
#     end
#
#     header_style_ids = HeaderStyle.all.map{|x|x.header_id}
#     Header.all.each do |y|
#       y.destroy if !header_style_ids.include?(y.id)
#     end
#
#     footer_style_ids = FooterStyle.all.map{|x|x.footer_id}
#     Footer.all.each do |y|
#       y.destroy if !footer_style_ids.include?(y.id)
#     end
#
#     body_style_ids = BodyStyle.all.map{|x|x.body_id}
#     Body.all.each do |y|
#       y.destroy if !body_style_ids.include?(y.id)
#     end
end
end
