class ReviewSerializer < ActiveModel::Serializer
  attributes :id, :title, :description, :score, :show_id
  
  has_one :show
end
