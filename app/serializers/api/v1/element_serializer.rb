class Api::V1::ElementSerializer < ActiveModel::Serializer
  has_one :element_style, serializer: Api::V1::ElementStyleSerializer
  attributes :id, :tag, :inner_text, :src, :element_style
  attribute :yo do
    "hello element"
  end
end
