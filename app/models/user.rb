class User < ActiveRecord::Base
    validates :name, :email, :cpf, :password, :tipo, presence: true
    validates :cpf , confirmation: true, uniqueness: { message: " already exists. Try again" }
    validates :password, presence: true, length: { minimum: 10 , too_short: " must have %{count} characters"}
    VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
	validates :email, presence: true, length: { maximum: 100 },format: { with: VALID_EMAIL_REGEX }
end
