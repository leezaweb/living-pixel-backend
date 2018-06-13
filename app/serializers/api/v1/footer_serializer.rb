class Api::V1::FooterSerializer < ActiveModel::Serializer
  has_one :footer_style
  attributes :id, :inner_text, :footer_style
end
