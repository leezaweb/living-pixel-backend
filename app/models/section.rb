class Section < ApplicationRecord
  belongs_to :site
  has_many :section_elements
  has_many :elements, through: :section_elements
  has_many :element_properties, through: :elements
  has_one :section_property
end
