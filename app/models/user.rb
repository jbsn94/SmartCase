class User < ActiveRecord::Base
    VALID_EMAIL_REGEX = /\A([\w+\-].?)+@[a-z\d\-]+(\.[a-z]+)*\.[a-z]+\z/i
    VALID_NAME_REGEX = /[A-Za-z]/
    VALID_CPF_REGEX = /[0-9]/
    
    validates :name, :email, :cpf, :password, :tipo, presence: true
    validates :name, format: { with: VALID_NAME_REGEX }
    validates :cpf, uniqueness: { message: "already exists. Try again" }, format: { with: VALID_CPF_REGEX }
	validates :email, length: { maximum: 255 },format: { with: VALID_EMAIL_REGEX }
end
