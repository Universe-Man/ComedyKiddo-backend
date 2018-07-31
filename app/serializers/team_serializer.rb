class TeamSerializer < ActiveModel::Serializer
  attributes :id, :name, :users, :shows_uniq, :source
end
