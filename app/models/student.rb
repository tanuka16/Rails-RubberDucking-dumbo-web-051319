class Student < ApplicationRecord
  has_many :ducks

  validates :name, presence: true
  validates :mod, numericality: {only_integer: true, greater_than: 0, less_than_or_equal_to: 5}

end
