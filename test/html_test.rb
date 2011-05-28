require File.expand_path('../test_helper', __FILE__)

class HTMLTest < ActiveSupport::TestCase
  test "creates a tag without content" do
    assert_equal "<hr>", Shaper::HTML.tag(:hr)
  end
  
  test "creates a tag with content" do
    assert_equal "<p>It's no fun unless it's hard.</p>", Shaper::HTML.tag(:p, "It's no fun unless it's hard.")
  end
  
  test "it escapes tag content" do
    assert_equal "<p>&lt;</p>", Shaper::HTML.tag(:p, "<")
  end
  
  test "it creates a tag with a class" do
    assert_equal '<p class="hard tip">You know</p>', Shaper::HTML.tag(:p, "You know", :class => %w(hard tip))
  end
end