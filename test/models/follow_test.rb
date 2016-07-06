require "test_helper"

class FollowTest < ActiveSupport::TestCase
  def follow
    @follow ||= Follow.new
  end

  def test_valid
    assert follow.valid?
  end
end
