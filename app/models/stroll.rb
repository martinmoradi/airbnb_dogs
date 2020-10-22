class Stroll < ApplicationRecord
  belongs_to :dog
  belongs_to :dogsitter
  belongs_to :city
end
