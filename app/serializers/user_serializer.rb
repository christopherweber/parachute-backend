class UserSerializer < ActiveModel::Serializer
  attributes :id, :first_name, :last_name

#Mime::Type.register 'application/vnd.api+json', :json, api_mime_types

  has_many :flights
end
