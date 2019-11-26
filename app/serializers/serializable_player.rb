class SerializablePlayer < JSONAPI::Serializable::Resource
  type 'player'

  attributes :name, :lastname, :player_post, :age, :image
  end