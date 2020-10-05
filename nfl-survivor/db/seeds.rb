# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Teams
[
  ["Arizona", "Cardinals", "AZ", "#97233F", "#FFB612"],
  ["Atlanta", "Falcons", "ATL", "#a71930", "#000000"],
  ["Baltimore", "Ravens", "BAL", "#241773", "#9E7C0C"],
  ["Buffalo", "Bills", "BUF", "#00338D", "#C60C30"],
  ["Carolina", "Panthers", "CAR", "#0085CA", "#101820"],
  ["Chicago", "Bears", "CHI", "#0B162A", "#c83803"],
  ["Cincinnati", "Bengals", "CIN", "#fb4f14", "#000000"],
  ["Cleveland", "Browns", "CLE", "#311D00", "#ff3c00"],
  ["Dallas", "Cowboys", "DAL", "#003594", "#869397"],
  ["Denver", "Broncos", "DEN", "#FB4F14", "#002244"],
  ["Detroit", "Lions", "DET", "#0076b6", "#B0B7BC"],
  ["Green Bay", "Packers", "GB", "#203731", "#FFB612"],
  ["Houston", "Texans", "HOU", "#03202f", "#A71930"],
  ["Indianapolis", "Colts", "IND", "#002C5F", "#A2AAAD"],
  ["Jacksonville", "Jaguars", "JAX", "#006778", "#9F792C"],
  ["Kansas City", "Chiefs", "KC", "#E31837", "#FFB81C"],
  ["Las Vegas", "Raiders", "LV", "#000000", "#A5ACAF"],
  ["Los Angeles", "Chargers", "LAC", "#FFC20E", "#0080C6"],
  ["Los Angeles", "Rams", "LAR", "#003594", "#ffa300"],
  ["Miami", "Dolphins", "MIA", "#008E97", "#FC4C02"],
  ["Minnesota", "Vikings", "MIN", "#4F2683", "#FFC62F"],
  ["New England", "Patriots", "NE", "#002244", "#C60C30"],
  ["New Orleans", "Saints", "NO", "#D3BC8D", "#101820"],
  ["New York", "Giants", "NYG", "#125740", "#FFFFFF"],
  ["New York", "Jets", "NYJ", "#0B2265", "#a71930"],
  ["Philadelphia", "Eagles", "PHI", "#004C54", "#A5ACAF"],
  ["Pittsburgh", "Steelers", "PGH", "#FFB612", "#101820"],
  ["San Francisco", "49ers", "SF", "#AA0000", "#B3995D"],
  ["Seattle", "Seahawks", "SEA", "#002244", "#69BE28"],
  ["Tampa Bay", "Buccaneers", "TB", "#D50A0A", "#34302B"],
  ["Tennessee", "Titans", "TEN", "#0C2340", "#4B92DB"],
  ["Washington", "Football Team", "WAS", "#773141", "#FFB612"],
].each do |data|
  location, name, short_name, primary, alternate = data
  Team.find_or_create_by!(
    location: location, name: name, short_name: short_name,
    color: Color.find_or_create_by!(primary: primary, alternate: alternate),
  )
end

# Seasons
current_year = Time.now.year
current_season = Season.find_or_create_by!(
  start_year: current_year,
  end_year: current_year + 1,
)

# Leagues
League.find_or_create_by!(
  name: "PickOrDie Open Beta",
  season: current_season,
)
