class BookSerializer < ActiveModel::Serializer
  attributes :id, :title, :author, :released_on, :cover_image
end
