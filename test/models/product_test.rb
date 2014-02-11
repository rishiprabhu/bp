require 'test_helper'

class ProductTest < ActiveSupport::TestCase
  subject { Product.new }

  # Validations
  must { validate_numericality_of(:price) }

  must { validate_presence_of(:name) }

  wont { allow_value(-1).for(:price) }

  # Associations
  must { have_many(:variations).dependent(:destroy) }
end
