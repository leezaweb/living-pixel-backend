class Api::V1::SectionElementSerializer < ActiveModel::Serializer
  belongs_to :section
  belongs_to :element


  def attributes(*args)
    object.attributes.symbolize_keys
  end
end
