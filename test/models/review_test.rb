require 'test_helper'

class ReviewTest < ActiveSupport::TestCase
  test "the truth" do
    assert_equal true, Play.new('Oswaldo do Rock', 'oswaldo@gmail.com')
    assert_equal false, Play.new('Oswaldo do Rock')
    assert_equal false, Play.new(1)
  end
end
