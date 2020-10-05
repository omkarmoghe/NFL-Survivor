class LockPicksJob < ApplicationJob
  def run
    Season.current.active.find_each do |season|
      locked_games = season.games
        .week(season.current_week)
        .stared
      to_be_locked = season.picks
        .week(season.current_week)
        .unlocked
        .joins(
          <<~SQL
            INNER JOINS games
            ON picks.team_id = '#{games.visiting_team_id}'
            OR picks.team_id = '#{games.home_team_id}'
          SQL
        ).where("games.id IN (#{locked_games.pluck(:id).join(", ")})")

      to_be_locked.update_all(locked: true)
    end

    finish
  end
end
