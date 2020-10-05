class League < ApplicationRecord
  belongs_to :season
  include SeasonConcern
  belongs_to :commissioner, foreign_key: :commissioner_id, class_name: "User"
  alias_attribute :commish, :commissioner

  validates :name, presence: true
  validates :season, presence: true
end
