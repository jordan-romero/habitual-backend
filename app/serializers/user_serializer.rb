class UserSerializer < ActiveModel::Serializer
  attributes :id, :username, :name
  has_many :goals
  has_many :habits, through: :goals
end
