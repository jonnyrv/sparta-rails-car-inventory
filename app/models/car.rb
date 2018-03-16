class Car < ApplicationRecord
    belongs_to :owner
    has_one :dealership
end
