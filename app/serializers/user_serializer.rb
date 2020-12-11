class UserSerializer < ActiveModel::Serializer
  attributes :id, :username, :goals, :habits
  has_many :goals
  has_many :habits
end
