class Season < ApplicationRecord
  WEEKS = {
    -1 => "TBD",
    0 => "Pre-season",
    1 => "Week 1",
    2 => "Week 2",
    3 => "Week 3",
    4 => "Week 4",
    5 => "Week 5",
    6 => "Week 6",
    7 => "Week 7",
    8 => "Week 8",
    9 => "Week 9",
    10 => "Week 10",
    11 => "Week 11",
    12 => "Week 12",
    13 => "Week 13",
    14 => "Week 14",
    15 => "Week 15",
    16 => "Week 16",
    17 => "Wild Card Round",
    18 => "Divisional Round",
    19 => "Conference Championship",
    20 => "Super Bowl",
    21 => "Ended",
  }

  has_many :leagues
  has_many :games
  has_many :picks

  scope :active, -> { where("current_week >= 1 AND current_week < 20") }
  scope :current, lambda do
    current_year = Time.now.year
    where("start_year => ? AND end_year <= ?", current_year, current_year)
  end
end
