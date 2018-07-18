class User < ApplicationRecord
  has_many :user_teams
  has_many :teams, through: :user_teams
  has_many :user_shows
  has_many :shows, through: :user_shows
  has_many :notes
end
