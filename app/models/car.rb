class Car < ApplicationRecord
    belongs_to :owner
    belongs_to :dealership
end
