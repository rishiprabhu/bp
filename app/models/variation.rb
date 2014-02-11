class Variation < ActiveRecord::Base
  module Styles
    LARGE = 'large'
    MEDIUM = 'medium'
    SMALL = 'small'

    ALL = [LARGE, MEDIUM, SMALL]
  end

  # Validations
  validates :name, presence: true
  validates :product_id, presence: true
  validates :style, inclusion: { in: Styles::ALL }

  # Associations
  belongs_to :product
end
