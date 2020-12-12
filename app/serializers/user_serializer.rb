class UserSerializer < ActiveModel::Serializer
  attributes :id, :username
  # :habits
  has_many :goals
  # has_many :habits
end
