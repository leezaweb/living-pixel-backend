class Api::V1::ElementPropertySerializer < ActiveModel::Serializer
  belongs_to :element
  def attributes(*args)
    object.attributes.symbolize_keys
  end
end
