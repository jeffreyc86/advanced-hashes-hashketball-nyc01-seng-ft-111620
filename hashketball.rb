require 'pry'

# Write your code below game_hash
def game_hash
  {
    home: {
      team_name: "Brooklyn Nets",
      colors: ["Black", "White"],
      players: [
        {
          player_name: "Alan Anderson",
          number: 0,
          shoe: 16,
          points: 22,
          rebounds: 12,
          assists: 12,
          steals: 3,
          blocks: 1,
          slam_dunks: 1
        },
        {
          player_name: "Reggie Evans",
          number: 30,
          shoe: 14,
          points: 12,
          rebounds: 12,
          assists: 12,
          steals: 12,
          blocks: 12,
          slam_dunks: 7
        },
        {
          player_name: "Brook Lopez",
          number: 11,
          shoe: 17,
          points: 17,
          rebounds: 19,
          assists: 10,
          steals: 3,
          blocks: 1,
          slam_dunks: 15
        },
        {
          player_name: "Mason Plumlee",
          number: 1,
          shoe: 19,
          points: 26,
          rebounds: 11,
          assists: 6,
          steals: 3,
          blocks: 8,
          slam_dunks: 5
        },
        {
          player_name: "Jason Terry",
          number: 31,
          shoe: 15,
          points: 19,
          rebounds: 2,
          assists: 2,
          steals: 4,
          blocks: 11,
          slam_dunks: 1
        }
      ]
    },
    away: {
      team_name: "Charlotte Hornets",
      colors: ["Turquoise", "Purple"],
      players: [
        {
          player_name: "Jeff Adrien",
          number: 4,
          shoe: 18,
          points: 10,
          rebounds: 1,
          assists: 1,
          steals: 2,
          blocks: 7,
          slam_dunks: 2
        },
        {
          player_name: "Bismack Biyombo",
          number: 0,
          shoe: 16,
          points: 12,
          rebounds: 4,
          assists: 7,
          steals: 22,
          blocks: 15,
          slam_dunks: 10
        },
        {
          player_name: "DeSagna Diop",
          number: 2,
          shoe: 14,
          points: 24,
          rebounds: 12,
          assists: 12,
          steals: 4,
          blocks: 5,
          slam_dunks: 5
        },
        {
          player_name: "Ben Gordon",
          number: 8,
          shoe: 15,
          points: 33,
          rebounds: 3,
          assists: 2,
          steals: 1,
          blocks: 1,
          slam_dunks: 0
        },
        {
          player_name: "Kemba Walker",
          number: 33,
          shoe: 15,
          points: 6,
          rebounds: 12,
          assists: 12,
          steals: 7,
          blocks: 5,
          slam_dunks: 12
        }
      ]
    }
  }
end

def all_players 
  arr = game_hash[:home][:players].concat(game_hash[:away][:players])
end



def num_points_scored (player)
  all_players.each do |player_stats|
    if player_stats[:player_name] == player
      return player_stats[:points]
    end
  end
end

def shoe_size (player)
  all_players.each do |player_stats|
    if player_stats[:player_name] == player
      return player_stats[:shoe]
    end
  end
end

def team_colors (team)
  game_hash.each do |k, v|
    if v[:team_name] == team
    return v[:colors]
    end
  end
end

def team_names
 [game_hash[:home][:team_name], game_hash[:away][:team_name]]
end

def get_team_stats (team)
  case team
  when game_hash[:home][:team_name]
    game_hash[:home][:players]
  when game_hash[:away][:team_name]
    game_hash[:away][:players]
  end
end

def player_numbers(team)
  get_team_stats(team).map do |stats|
    stats[:number]
  end
end

def player_stats (player)
    all_players.each do |player_stats|
    if player_stats[:player_name] == player
      return player_stats
    end
  end
end

def big_shoe_rebounds
  largest_size = 0
  rebounds = 0
  all_players.each do |stats|
    if stats[:shoe] > largest_size
      largest_size = stats[:shoe]
      rebounds = stats[:rebounds]
    end
  end
  rebounds
end

def most_points_scored
  highest_score = 0
  top_scorer = ""
  all_players.each do |stats|
    if stats[:points] > highest_score
      highest_score = stats[:points]
      top_scorer = stats[:player_name]
    end
  end
  top_scorer
end


  