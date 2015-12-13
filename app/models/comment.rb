class Comment < ActiveRecord::Base
    belongs_to :order
    
    validates :description, presence: true
    validates :description, length: { maximum: 300, message: "muito longa." }
end
