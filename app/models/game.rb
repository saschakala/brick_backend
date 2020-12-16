class Game < ApplicationRecord
  belongs_to :user

  def user_name=(name)
    self.username = User.find_or_create_by(name: name)
  end

  def user_name
    self.username ? self.user.name : :nil
  end

end
