class Element < ApplicationRecord
  has_many :section_elements
  has_many :sections, through: :section_elements
  has_many :sites, through: :sections
  has_one :element_style
end
