class Show < ApplicationRecord
  has_many :user_shows
  has_many :users, through: :user_shows
  # UNSURE ABOUT BELOW
  has_many :teams, through: :users

  def teams_uniq
    self.teams.uniq
  end

  validates :name, presence: true, uniqueness: true
  validates :location, presence: true

end
