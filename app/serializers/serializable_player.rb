class SerializablePlayer < JSONAPI::Serializable::Resource
  type 'player'

  attributes :first_name, :last_name, :player_post, :age, :image
    has_many :news
    belongs_to :user
    belongs_to :team
  end