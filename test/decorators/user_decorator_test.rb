# coding: utf-8
require 'test_helper'

class UserDecoratorTest < ActiveSupport::TestCase
  include ActionView::TestCase::Behavior

  setup do
#    ActiveDecorator::ViewContext.current = controller.view_context
    @user = ActiveDecorator::Decorator.instance.decorate users(:jean)
#    @user = User.new.extend UserDecorator
  end

  test "full_name" do
    assert_equal "Jean Valjean", @user.full_name
  end

  test "link" do
    assert_equal \
      '<a href="http://jeanvaljean.com">Jean Valjean</a>',
      @user.link
  end
end
