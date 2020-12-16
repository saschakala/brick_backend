class Game < ApplicationRecord
  belongs_to :user
  validates :score, presence: true

  def user_name=(name)
    self.user = User.find_or_create_by(name: name)
  end

  def user_name
    self.user ? self.user.name : :nil
  end

end
