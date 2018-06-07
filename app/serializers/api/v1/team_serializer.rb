class Api::V1::TeamSerializer < ActiveModel::Serializer
  belongs_to :user
  belongs_to :site
  # def attributes(*args)
  #   object.attributes.symbolize_keys
  # end
  attributes :user
end
