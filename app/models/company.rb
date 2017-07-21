class Company < ApplicationRecord

  validates :name, presence: true
  validates :department, presence: true
  validates :product, presence: true

    scope :search, -> (name) { where("name like ?", "#{name}%") }


end
