class Api::V1::FooterStyleSerializer < ActiveModel::Serializer
  belongs_to :footer
  def attributes(*args)
    object.attributes.symbolize_keys
  end
end
