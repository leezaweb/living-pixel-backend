class Api::V1::HeaderSerializer < ActiveModel::Serializer
  has_one :header_style, serializer: HeaderStyleSerializer
  attributes :inner_text, :header_style
end
