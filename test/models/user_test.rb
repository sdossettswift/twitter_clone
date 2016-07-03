require 'test_helper'

class UserTest < ActiveSupport::TestCase

  test "Create new user" do

    @user = User.new
    @user.username = "Sarah"
    @user.save
    User.last.username =="Sarah"
    assert_equal false, @user.errors[:post].any?, "Username is Sarah"

end

end
