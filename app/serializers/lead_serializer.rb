class LeadSerializer < ActiveModel::Serializer
  attributes :id, :first_name, :last_name, :phone, :status, :notes
end
