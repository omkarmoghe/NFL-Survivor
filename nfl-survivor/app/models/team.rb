class Team < ApplicationRecord
  belongs_to :color

  has_many :home_games, class_name: "Game", foreign_key: "home_team_id"
  has_many :away_games, class_name: "Game", foreign_key: "visiting_team_id"

  validates :location, presence: true
  validates :name, presence: true
  validates :short_name, presence: true
  validates :color, presence: true

  def full_name
    "#{location} #{name}"
  end
end
