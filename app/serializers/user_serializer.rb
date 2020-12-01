class UserSerializer < ActiveModel::Serializer
  attributes :id, :username, :goals
  has_many :goals
  # has_many :habits, through: :goals
end
