class Api::V1::HeaderStyleSerializer < ActiveModel::Serializer
  belongs_to :header
  def attributes(*args)
    object.attributes.symbolize_keys
  end
end
