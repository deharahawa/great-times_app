require 'test_helper'

class CategoryTest < ActiveSupport::TestCase
  test "the truth" do
    assert_equal 'Rock', Play.new('Rubens Loureiro')
    assert_equal false, Play.new(1)
  end
end
