class UserSerializer < ActiveModel::Serializer
  attributes :id, :name, :email, :password, :coach, :img_src, :teams, :shows, :notes, :source

  # :teams_uniq, :shows_uniq
end
