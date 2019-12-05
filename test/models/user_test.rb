require 'test_helper'

class UserTest < ActiveSupport::TestCase
  test "the truth" do
    assert_equal true, Play.new('Oswaldo do Rock', 'Esse cara é muito bom')
    assert_equal false, Play.new('Esse cara é muito bom')
    assert_equal false, Play.new(232434)
    assert_equal false, Play.new(true)
  end
end
