class ShowSerializer < ActiveModel::Serializer
  attributes :id, :name, :location, :users, :teams, :source
end
