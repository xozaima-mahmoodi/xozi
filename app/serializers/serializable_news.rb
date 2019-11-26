class SerializableNews < JSONAPI::Serializable::Resource
  type 'news'

  attributes :title, :description, :image
  end