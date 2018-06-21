class Site < ApplicationRecord
  has_many :teams
  has_many :users, through: :teams

  has_many :sections
  has_many :section_styles, through: :sections

  has_many :section_elements, through: :sections
  has_many :elements, through: :section_elements
  has_many :element_styles, through: :elements

  has_one :body
  has_one :body_style, through: :body

  has_one :header
  has_one :header_style, through: :header

  has_one :footer
  has_one :footer_style, through: :footer



  def dup
    new_element = nil
    super.tap do |new_thing|

      self.sections.each do |section|
        new_section = section.dup
        new_section.section_style = section.section_style.dup

        new_section.site_id = new_thing.id
        new_section.save

        new_thing.sections << new_section


        section.elements.each do |element|
          new_element = element.dup


          new_element.sections = [new_section]
          new_element.save
        end


        new_section.elements << new_element
        new_section.save

        new_thing.save
      end


      new_b = self.body.dup
      new_b.site_id = new_thing.id
      new_b.save

      new_bs = self.body_style.dup
      new_bs.body_id = new_b.id
      new_bs.save

      new_h = self.header.dup
      new_h.site_id = new_thing.id
      new_h.save

      new_hs = self.header_style.dup
      new_hs.header_id = new_h.id
      new_hs.save

      new_f = self.footer.dup
      new_f.site_id = new_thing.id
      new_f.save

      new_fs = self.footer_style.dup
      new_fs.footer_id = new_f.id
      new_fs.save



      new_thing.update!(key:"")
      new_thing.save



    end



  end
end
