class Bee < ApplicationRecord
  belongs_to :hive
  has_many :flights
  validates :name, uniqueness: true
  validates :name, presence: true
end
