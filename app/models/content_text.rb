class ContentText < ApplicationRecord
  validates_presence_of :name, :body

  default_scope {order(name: :asc)}
end
