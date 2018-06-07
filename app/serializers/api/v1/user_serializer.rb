class Api::V1::UserSerializer < ActiveModel::Serializer
  has_many :teams
  has_many :sites, through: :teams
  def attributes(*args)
    object.attributes.symbolize_keys
  end
end
