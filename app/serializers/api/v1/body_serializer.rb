class Api::V1::BodySerializer < ActiveModel::Serializer
  has_one :body_style
  attributes :body_style
end
