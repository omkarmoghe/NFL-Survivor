class Game < ApplicationRecord
  belongs_to :visiting_team, class_name: "Team"
  belongs_to :home_team, class_name: "Team"
  belongs_to :season
  include SeasonConcern

  scope :not_started, -> { where("kickoff_at > ?", Time.now) }
  scope :started, -> { where("kickoff_at <= ?", Time.now) }
end
