class Api::V1::SectionStyleSerializer < ActiveModel::Serializer
  belongs_to :section
  def attributes(*args)
    object.attributes.symbolize_keys
  end
end
