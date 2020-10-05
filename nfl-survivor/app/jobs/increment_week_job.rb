class IncrementWeekJob < ApplicationJob
  def run
    current_year = Time.now.year
    current_seasons = Season
      .where("start_year => ? AND end_year <= ?", current_year, current_year)
      .where("current_week >= 1 AND current_week < 20")
    current_seasons.find_each do |season|
      season.update!(current_week: season.current_week + 1)
    end

    finish
  end
end
