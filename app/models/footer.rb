class Footer < ApplicationRecord
  belongs_to :site
  has_one :footer_style
end
