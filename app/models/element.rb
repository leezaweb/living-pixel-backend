class Element < ApplicationRecord
  has_many :section_elements
  has_many :sections, through: :section_elements
  has_many :sites, through: :sections
  has_one :element_style


    def dup
      super.tap do |new_thing|
        # self.section_elements.each do |section_element|
        #   new_thing.section_elements << section_element.dup
        #   new_thing.save
        # end

        self.sections.each do |section|
          new_section = section
          new_section.section_style = section.section_style

          new_section.save

          new_thing.sections << new_section
          new_thing.save
        end


        new_thing.element_style = self.element_style.dup

        new_thing.save

      end



    end

end
