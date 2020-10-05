class League < ApplicationRecord
  belongs_to :season

  validates :name, presence: true
  validates :season, presence: true
end
