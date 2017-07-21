class CompanySerializer < ActiveModel::Serializer
  attributes :id, :name, :department, :product
end
