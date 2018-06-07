class Api::V1::HeaderPropertySerializer < ActiveModel::Serializer
  belongs_to :header
  def attributes(*args)
    object.attributes.symbolize_keys.reject{|k|
    byebug}
  end
end
