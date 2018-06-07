class Api::V1::SectionPropertySerializer < ActiveModel::Serializer
  belongs_to :section
  def attributes(*args)
    object.attributes.symbolize_keys
  end
end
