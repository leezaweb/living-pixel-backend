class Api::V1::SectionSerializer < ActiveModel::Serializer
  # has_many :elements, through: :section_elements, serializer: ElementSerializer
  # has_many :elements, serializer: ElementSerializer
  #
  #
  # has_many :section_elements, serializer: SectionElementSerializer


  attributes :id, :sequence, :section_style

    attribute :elements do
      elements = Element.joins(section_elements: :section).where("section_elements.section_id=?",object.id)

      elements.map do |element|
      element_attributes = element.attributes

      styles = ElementStyle.joins(:element).where("element_styles.element_id=?",element.id)[0]
      element_attributes["element_style"] = styles
      element_attributes
    end
  end
end
