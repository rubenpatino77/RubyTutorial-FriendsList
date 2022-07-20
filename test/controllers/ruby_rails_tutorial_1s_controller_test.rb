require "test_helper"

class RubyRailsTutorial1sControllerTest < ActionDispatch::IntegrationTest
  setup do
    @ruby_rails_tutorial_1 = ruby_rails_tutorial_1s(:one)
  end

  test "should get index" do
    get ruby_rails_tutorial_1s_url
    assert_response :success
  end

  test "should get new" do
    get new_ruby_rails_tutorial_1_url
    assert_response :success
  end

  test "should create ruby_rails_tutorial_1" do
    assert_difference("RubyRailsTutorial1.count") do
      post ruby_rails_tutorial_1s_url, params: { ruby_rails_tutorial_1: { email: @ruby_rails_tutorial_1.email, first_name: @ruby_rails_tutorial_1.first_name, last_name: @ruby_rails_tutorial_1.last_name, phone: @ruby_rails_tutorial_1.phone, twitter: @ruby_rails_tutorial_1.twitter } }
    end

    assert_redirected_to ruby_rails_tutorial_1_url(RubyRailsTutorial1.last)
  end

  test "should show ruby_rails_tutorial_1" do
    get ruby_rails_tutorial_1_url(@ruby_rails_tutorial_1)
    assert_response :success
  end

  test "should get edit" do
    get edit_ruby_rails_tutorial_1_url(@ruby_rails_tutorial_1)
    assert_response :success
  end

  test "should update ruby_rails_tutorial_1" do
    patch ruby_rails_tutorial_1_url(@ruby_rails_tutorial_1), params: { ruby_rails_tutorial_1: { email: @ruby_rails_tutorial_1.email, first_name: @ruby_rails_tutorial_1.first_name, last_name: @ruby_rails_tutorial_1.last_name, phone: @ruby_rails_tutorial_1.phone, twitter: @ruby_rails_tutorial_1.twitter } }
    assert_redirected_to ruby_rails_tutorial_1_url(@ruby_rails_tutorial_1)
  end

  test "should destroy ruby_rails_tutorial_1" do
    assert_difference("RubyRailsTutorial1.count", -1) do
      delete ruby_rails_tutorial_1_url(@ruby_rails_tutorial_1)
    end

    assert_redirected_to ruby_rails_tutorial_1s_url
  end
end
