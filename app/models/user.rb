class User < ActiveRecord::Base
    validates :name, :email, :cpf, :password, :tipo, presence: true
    validates :cpf, uniqueness: { message: " already exists. Try again" }
    VALID_EMAIL_REGEX = /\A([\w+\-].?)+@[a-z\d\-]+(\.[a-z]+)*\.[a-z]+\z/i
	validates :email, length: { maximum: 255 },format: { with: VALID_EMAIL_REGEX }
end
