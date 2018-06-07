class Api::V1::ElementSerializer < ActiveModel::Serializer
  has_one :element_property, serializer: ElementPropertySerializer
  attributes :tag, :inner_text, :src, :element_property
  attribute :yo do
    "hello element"
  end
end
