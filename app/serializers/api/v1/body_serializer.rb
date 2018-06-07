class Api::V1::BodySerializer < ActiveModel::Serializer
  has_one :body_property
  attributes :body_property
end
