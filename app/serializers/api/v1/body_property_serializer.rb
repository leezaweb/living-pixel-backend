class Api::V1::BodyPropertySerializer < ActiveModel::Serializer
  belongs_to :body
  def attributes(*args)
    object.attributes.symbolize_keys
  end
end
