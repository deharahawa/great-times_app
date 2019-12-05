require 'test_helper'

class PlayTest < ActiveSupport::TestCase
  test "the truth" do
    assert_equal true, Play.new('oswaldo@gmail.com', 'Rock', 'Esse cara é genial', 'oswaldo.png')
    assert_equal false, Play.new(1)
    assert_equal false, Play.new('Sting', 'Pagode', 'Não curti muito')
  end
end
