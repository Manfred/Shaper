require File.expand_path('../test_helper', __FILE__)

class ShaperTest < ActiveSupport::TestCase
  def setup
    @user = User.new
    @template = MockTemplate.new
    @builder = Shaper.new(:user, @user, @template, {})
  end
  
  test "initializes a form builder" do
    assert_equal @template, @builder.template
  end
end