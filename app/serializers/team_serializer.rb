class TeamSerializer < ActiveModel::Serializer
  attributes :id, :name, :users, :shows, :source
end
