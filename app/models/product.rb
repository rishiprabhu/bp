class Product < ActiveRecord::Base
  # Validations
  validates :name, presence: true
  validates :price, numericality: { greater_than: 0 }

  # Associations
  has_many :variations, dependent: :destroy
end
