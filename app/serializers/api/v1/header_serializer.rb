class Api::V1::HeaderSerializer < ActiveModel::Serializer
  has_one :header_property, serializer: HeaderPropertySerializer
  attributes :inner_text, :header_property
end
