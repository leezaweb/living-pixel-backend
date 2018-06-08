class Header < ApplicationRecord
  belongs_to :site
  has_one :header_style
end
