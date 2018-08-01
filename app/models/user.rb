class User < ApplicationRecord
  has_many :user_teams
  has_many :teams, through: :user_teams
  has_many :user_shows
  has_many :shows, through: :user_shows
  has_many :notes

  # def teams_uniq
  #   self.teams.uniq
  # end
  #
  # def shows_uniq
  #   self.shows.uniq
  # end

  validates :name, presence: true
  validates :email, presence: true, uniqueness: true
  validates :coach, presence: true

end
