class Api::V1::HeaderSerializer < ActiveModel::Serializer
  has_one :header_style, serializer: HeaderStyleSerializer
  attributes :id,:inner_text, :header_style
end
