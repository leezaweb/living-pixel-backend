class Api::V1::FooterSerializer < ActiveModel::Serializer
  has_one :footer_style
  attributes :inner_text, :footer_style
end
