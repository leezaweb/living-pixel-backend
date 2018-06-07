class Api::V1::FooterSerializer < ActiveModel::Serializer
  has_one :footer_property
  attributes :inner_text, :footer_property
end
