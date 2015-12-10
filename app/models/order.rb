class Order < ActiveRecord::Base
    belongs_to :user
    has_many :comments
    
    VALID_LETTERS_REGEX = /[a-zA-Z]/
    VALID_LOCAL_REGEX = /[a-zA-Z0-9\-\_]/
    VALID_ALL_REGEX = /./
    
    validates :title, :description, :local, :status, presence: true
    validates :title, format: { with: VALID_LETTERS_REGEX }
    validates :description, length: { maximum: 500, message: " muito longa. Digite até 500 caracteres" }, format: {with: VALID_ALL_REGEX }
    validates :local, length: { maximum: 50 }, format: { with: VALID_LOCAL_REGEX }
    
end
