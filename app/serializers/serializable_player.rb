class SerializablePlayer < JSONAPI::Serializable::Resource
  type 'player'

  attributes :first_name, :last_name, :player_post, :age, :image
  end