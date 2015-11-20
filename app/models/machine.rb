class Machine < ActiveRecord::Base
    validates :tipping, format: { with: /\A[a-zA-Z0-9]+\z/, message: "only allows letters and numbers" }
    validates :description, format: { with: /\A[a-zA-Z0-9]+\z/, message: "only allows letters and numbers" }
    validates :model, format: { with: /\A[a-zA-Z0-9]+\z/, message: "only allows letters and numbers" }
end
