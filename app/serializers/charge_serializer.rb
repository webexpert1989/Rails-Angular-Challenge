class ChargeSerializer < ActiveModel::Serializer
  attributes :id, :paid, :amount, :currency, :disputed, :refunded, :created_at

  has_one :user
end