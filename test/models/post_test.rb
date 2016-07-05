require 'test_helper'

class PostTest < ActiveSupport::TestCase

    test "post should post" do

      @post = Post.new
      @post.message = "Hello World"
      @post.save
    
  end

end
