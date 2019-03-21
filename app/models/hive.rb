class Hive < ApplicationRecord
  has_many :bees
  has_many :flights, through: :bees
end
