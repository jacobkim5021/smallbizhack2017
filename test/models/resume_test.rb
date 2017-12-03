require 'test_helper'

class ResumeTest < ActiveSupport::TestCase
  def setup
    @user = users(:silas)
    @resume = Resume.new(content: "Lorem ipsum", user_id: @user.id, name: "General")
  end

  test "should be valid" do
    assert @resume.valid?
  end

  test "user id should be present" do
    @resume.user_id = nil
    assert_not @resume.valid?
  end

  test "content should be present" do
    @resume.content = "   "
    assert_not @resume.valid?
  end

  test "content should be at most 40 characters" do
    @resume.content = "a" * 41
    assert_not @resume.valid?
  end
end
