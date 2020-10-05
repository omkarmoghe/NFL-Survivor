class Pick < ApplicationRecord
  module Outcomes
    ALL = [
      CORRECT = "correct",
      INCORRECT = "incorrect",
      TBD = "tbd",
    ]

  belongs_to :season
  belongs_to :team
  belongs_to :user
  belongs_to :league

  validates :season, presence: true
  validates :team, presence: true
  validates :user, presence: true
  validates :league, presence: true
  validates :locked, presence: true
  validates :outcome, presence: true, inclusion: { in: Outcomes:ALL }
end
