module SeasonConcern
  extend ActiveSupport::Concern

  included do
    scope :active_season, -> { joins(:season).merge(Season.active) }
    scope :current_season, -> { joins(:season).merge(Season.current) }
  end
end
