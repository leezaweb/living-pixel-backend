class Body < ApplicationRecord
  belongs_to :site
  has_one :body_style
end
