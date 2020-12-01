class GoalSerializer < ActiveModel::Serializer
  attributes :id, :name, :username, :habits
  has_many :habits
end
