class SerializablePlayer < JSONAPI::Serializable::Resource
  type 'player'

  attributes :name, :lastname, :post, :age, :image
  end