class City < ApplicationRecord
  has_many :dogs
  has_many :strolls
  has_many :dogsitters
end
