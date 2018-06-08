class Api::V1::UserSerializer < ActiveModel::Serializer
  # has_many :teams, serializer: TeamSerializer
  has_many :sites, through: :teams
  # def attributes(*args)
  #   object.attributes.symbolize_keys
  # end
  attributes :id, :email,:created_at,:updated_at

  attribute :teams do
    team = Team.joins(:user).where("teams.user_id=?",object.id)#.group("teams.site_id")
    team
  end
end
