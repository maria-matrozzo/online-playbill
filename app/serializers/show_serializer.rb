class ShowSerializer < ActiveModel::Serializer
  attributes :id, :name, :image_URL, :description

  has_many :reviews
end
