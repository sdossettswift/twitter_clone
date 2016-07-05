require 'test_helper'

class UserTest < ActiveSupport::TestCase

  test "Create new user" do

    @user = User.new
    @user.username = "Sarah"
    @user.password = "12345678"

    assert_equal true, @user.save


end

end
