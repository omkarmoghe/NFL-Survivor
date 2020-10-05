module WeekConcern
  extend ActiveSupport::Concern

  included do
    scope :week, ->(week) { where(week: week) }
  end
end
