class Site < ApplicationRecord
  has_many :teams
  has_many :users, through: :teams

  has_many :sections
  has_many :section_styles, through: :sections

  has_many :section_elements, through: :sections
  has_many :elements, through: :section_elements
  has_many :element_styles, through: :elements

  has_one :body
  has_one :body_style, through: :body

  has_one :header
  has_one :header_style, through: :header

  has_one :footer
  has_one :footer_style, through: :footer
end
