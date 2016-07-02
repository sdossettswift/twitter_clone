require 'test_helper'

class PostTest < ActiveSupport::TestCase


    test "post should post" do

      @post = Post.new
      @post.message = "Hello World"
      @post.save
      Post.first.message =="Hello World"
      assert_equal false, @post.errors[:post].any?, "Posting message should post message"

  end

end
