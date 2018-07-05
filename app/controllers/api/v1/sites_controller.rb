class Api::V1::SitesController < ApplicationController
  def index
    clean
    render json: Site.all
  end

  def published
    render json: Site.find_by(url:params[:url])

  end

  def update
    site = Site.find(params[:id])
# byebug
    if params[:key] && params[:site] && [27,26,25,24,23,10,11].none?{|n|n==params[:site]}
      current_site = Site.find(params[:site].to_i)
      key_site = Site.find_by(key: params[:key])

      current_site.sections.each do |section|
        section.delete
      end

      key_site.sections.each do |section|

        new_section = section.dup
        new_section.section_style = section.section_style.dup
        new_section.save
        current_site.sections << new_section

        section.elements.each do |element|
          new_element = element.dup


          new_element.sections = [new_section]
          new_element.save
        end

          # new_section.elements << new_element
          new_section.save

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


    site.update(url:params[:url].rstrip) if params[:url]
    site.update(title:params[:title]) if params[:title]

  end

  def show
    # element_style_ids = ElementStyle.all.map{|x|x.element_id}
    # Element.all.each do |y|
    #   y.destroy if !element_style_ids.include?(y.id)
    # end
    render json: Site.find(params[:id])
  end

  def create
    # byebug
    puts "%%%%%%%%%%%%%%%%%%%%%%%#{params.keys}"


      new_site = Site.create(
        url: "new-site",
        title: "New Site",
        version: 1
      )

      new_site_body = Body.create(
        site_id: new_site.id
      )

      BodyStyle.create(
        background_repeat: "repeat",
        background_attachment: "fixed",
        background_size: "30px 10px",
        background_position: "top right",
        background_color: "grey",
        body_id: new_site_body.id
      )

      new_site_header = Header.create(
        inner_text:'{"entityMap":{},"blocks":[{"key":"4oah6","text":"My New Site Header","type":"unstyled","depth":0,"inlineStyleRanges":[],"entityRanges":[]}]}',
        site_id: new_site.id
      )

      HeaderStyle.create(
        border_bottom_color: "black",
        border_bottom_style:"solid",
        border_bottom_width:6,
        background_color: "black",
        color:"white",
        header_id: new_site_header.id

      )

      new_site_footer = Footer.create(
        inner_text:'{"entityMap":{},"blocks":[{"key":"4oah6","text":"My Site Footer","type":"unstyled","depth":0,"inlineStyleRanges":[],"entityRanges":[]}]}',
        site_id: new_site.id
      )

      FooterStyle.create(
        border_top_color:"black",
        border_top_style:"solid",
        border_top_width:6,
        background_color: "black",
        color:"white",
        footer_id: new_site_footer.id

      )

      new_site_section = Section.create(sequence:1,site_id:new_site.id)

      new_site_style = SectionStyle.create(section_id:new_site_section.id)
      initAttr(new_site_style)


      # format.json { render :json => { :result => 'success', :request => site_path(new_site.id) } }
       redirect_to api_v1_site_path(new_site)
  end


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
NUMERIC = %w[width radius count grid gap]

def initAttr(style)
  style.attributes.reject{|k|["id", "section_id","element_id"].include?(k)}.each do |attribute|
    # byebug
    if NUMERIC.any?{|word|attribute[0].gsub("_"," ").include?(word)}
      style[attribute[0]] = 0
      style.grid_column_end = 12 if attribute[0].include?("column_end")
      style.grid_row_end = 2 if attribute[0].include?("row_end")
      style.grid_column_start = 1 if attribute[0].include?("column_start")
      style.grid_row_start = 1 if attribute[0].include?("row_start")

      style.save
    else
      style[attribute[0]] = ""
      style.save
    end
  end



end
