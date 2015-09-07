require 'test_helper'

class CommentTest < ActiveSupport::TestCase
  test "humanized rating converts as expected" do
  	expected = "one star"
   	actual = Comment.new(:rating => '1_star').humanized_rating
    assert_equal expected, actual
  end
end
