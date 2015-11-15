class Machine < ActiveRecord::Base
    validates :tipping, presence: true
    validates :description, presence: true
    validates :model, presence: true
end
