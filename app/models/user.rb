class User < ApplicationRecord
  has_many :teams
  has_many :sites, through: :teams
end
