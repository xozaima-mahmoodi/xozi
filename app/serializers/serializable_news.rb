class SerializableNews < JSONAPI::Serializable::Resource
  type 'news'

  attributes :title, :description, :image
  
    belongs_to :team
    belongs_to :player
    belongs_to :user
  end