class IncrementWeekJob < ApplicationJob
  def run
    Season.current.active.find_each do |season|
      season.update!(current_week: season.current_week + 1)
    end

    finish
  end
end
