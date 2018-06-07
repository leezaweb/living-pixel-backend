class Site < ApplicationRecord
  has_many :teams
  has_many :users, through: :teams

  has_many :sections
  has_many :section_properties, through: :sections

  has_many :section_elements, through: :sections
  has_many :elements, through: :section_elements
  has_many :element_properties, through: :elements

  has_one :body
  has_one :body_property, through: :body

  has_one :header
  has_one :header_property, through: :header

  has_one :footer
  has_one :footer_property, through: :footer
end
