class Goal < ApplicationRecord
  belongs_to :user
  has_many :habits, dependent: :destroy


  def username
    user.username
  end

  def username=(username)
    self.user = User.find_or_create_by(username: username)
  end

end
