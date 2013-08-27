class TodoSerializer < ActiveModel::Serializer
  attributes :id, :content, :closed
end
