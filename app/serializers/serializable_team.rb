class SerializableTeam < JSONAPI::Serializable::Resource
  type 'team'

  attributes :name, :description, :image
  end