require 'test_helper'

class VariationTest < ActiveSupport::TestCase
  subject { Variation.new }

  # Validations
  must { ensure_inclusion_of(:style).in_array(Variation::Styles::ALL) }

  must { validate_presence_of(:name) }
  must { validate_presence_of(:product_id) }

  # Associations
  must { belong_to(:product) }
end
