class Team < ApplicationRecord
  has_many :user_teams
  has_many :users, through: :user_teams
  # UNSURE ABOUT BELOW
  has_many :shows, through: :users
end
