require 'test_helper'

class PostTest < ActiveSupport::TestCase
  
  setup do
    @post = Post.new
  end

  teardown do
    @post.destroy
  end


  test "post should not be valid without a title" do
    failure_message = "Post without title can't be saved"
    assert_not(@post.valid?, failure_message)
    @post.body = "Any body"
    assert_not(@post.valid?, failure_message)
   end

   test "post should not be valid without a body" do
    assert_not @post.valid?, "Post without body can't be saved"
    @post.title = "Foo title"
    assert_not @post.valid?, "Post without body can't be saved"
   end

   test "post should  be valid with a title and a body" do
    @post.title = "Foo Title"
    @post.body = "Any body fulled a text box"
    assert @post.valid?
   end


end
