class SerializableUser < JSONAPI::Serializable::Resource
  type 'users'

  attributes :first_name, :last_name, :role, :created_at, :updated_at, :email
end