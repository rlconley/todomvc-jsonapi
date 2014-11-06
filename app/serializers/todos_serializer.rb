class TodosSerializer < ActiveModel::Serializer
  attributes :id, :name, :completed

  def url
    todo_url(object)
  end
end
