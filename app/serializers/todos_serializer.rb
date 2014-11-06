class TodosSerializer < ActiveModel::Serializer
  attributes :id, :name, :completed
end
