class SerializableTeam < JSONAPI::Serializable::Resource
  type 'team'

  attributes :name, :description, :image
    has_many :news
    has_many :players
    belongs_to :user
  end