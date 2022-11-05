class Destination < ActiveRecord::Base
    belongs_to :trip
    has_many :users, through: :trips
end