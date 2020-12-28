class Game < ApplicationRecord
  belongs_to :user
  validate :user_exists
  validates :score, presence: true

  def user_name=(name)
    self.user = User.find_or_create_by(name: name)
  end

  def user_name
    self.user ? self.user.name : :nil
  end

  def user_exists
    if self.user.name == "" || !self.user.name
      self.errors.add :no_name, "must provide a name"
    end
  end

  def self.game_sort
    self.all.sort_by {|game| -game.score}
  end


end