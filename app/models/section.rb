class Section < ApplicationRecord
  belongs_to :site
  has_many :section_elements
  has_many :elements, through: :section_elements
  has_many :element_styles, through: :elements
  has_one :section_style
end
