class Api::V1::SectionSerializer < ActiveModel::Serializer
  # has_many :elements, through: :section_elements, serializer: ElementSerializer
  # has_many :elements, serializer: ElementSerializer
  #
  #
  # has_many :section_elements, serializer: SectionElementSerializer


  attributes :id, :sequence, :section_property

    attribute :elements do
      elements = Element.joins(section_elements: :section).where("section_elements.section_id=?",object.id)

      elements.map do |element|
      element_attributes = element.attributes

      properties = ElementProperty.joins(:element).where("element_properties.element_id=?",element.id)[0]
      element_attributes["element_property"] = properties
      element_attributes
    end
  end
end
