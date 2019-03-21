class Flower < ApplicationRecord
  has_many :bees
  has_many :flights
  validates :name, presence: true
  validates :pollen_capacity, numericality: {only_integer:true}
end
