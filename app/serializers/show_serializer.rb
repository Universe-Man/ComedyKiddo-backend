class ShowSerializer < ActiveModel::Serializer
  attributes :id, :name, :location, :users, :teams
end
