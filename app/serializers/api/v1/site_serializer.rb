class Api::V1::SiteSerializer < ActiveModel::Serializer
  # has_many :users, through: :teams

  # has_many :section_properties, through: :sections

  # has_many :section_elements, through: :sections
  # has_many :elements, through: :section_elements, serializer: ElementSerializer
  # has_many :element_properties, through: :elements

  # has_one :body_property, through: :body

  # has_one :header_property, through: :header
  # has_one :footer_property, through: :footer

  has_many :teams, serializer: TeamSerializer
  has_many :sections, serializer: SectionSerializer
  has_one :body, serializer: BodySerializer
  has_one :header, serializer: HeaderSerializer
  has_one :footer, serializer: FooterSerializer

  attributes :id, :url, :title, :version, :created_at, :updated_at
end
