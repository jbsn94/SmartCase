class Machine < ActiveRecord::Base
    validates :tipping, :description, :model, presence: true
end
