require "application_system_test_case"

class RubyRailsTutorial1sTest < ApplicationSystemTestCase
  setup do
    @ruby_rails_tutorial_1 = ruby_rails_tutorial_1s(:one)
  end

  test "visiting the index" do
    visit ruby_rails_tutorial_1s_url
    assert_selector "h1", text: "Ruby rails tutorial 1s"
  end

  test "should create ruby rails tutorial 1" do
    visit ruby_rails_tutorial_1s_url
    click_on "New ruby rails tutorial 1"

    fill_in "Email", with: @ruby_rails_tutorial_1.email
    fill_in "First name", with: @ruby_rails_tutorial_1.first_name
    fill_in "Last name", with: @ruby_rails_tutorial_1.last_name
    fill_in "Phone", with: @ruby_rails_tutorial_1.phone
    fill_in "Twitter", with: @ruby_rails_tutorial_1.twitter
    click_on "Create Ruby rails tutorial 1"

    assert_text "Ruby rails tutorial 1 was successfully created"
    click_on "Back"
  end

  test "should update Ruby rails tutorial 1" do
    visit ruby_rails_tutorial_1_url(@ruby_rails_tutorial_1)
    click_on "Edit this ruby rails tutorial 1", match: :first

    fill_in "Email", with: @ruby_rails_tutorial_1.email
    fill_in "First name", with: @ruby_rails_tutorial_1.first_name
    fill_in "Last name", with: @ruby_rails_tutorial_1.last_name
    fill_in "Phone", with: @ruby_rails_tutorial_1.phone
    fill_in "Twitter", with: @ruby_rails_tutorial_1.twitter
    click_on "Update Ruby rails tutorial 1"

    assert_text "Ruby rails tutorial 1 was successfully updated"
    click_on "Back"
  end

  test "should destroy Ruby rails tutorial 1" do
    visit ruby_rails_tutorial_1_url(@ruby_rails_tutorial_1)
    click_on "Destroy this ruby rails tutorial 1", match: :first

    assert_text "Ruby rails tutorial 1 was successfully destroyed"
  end
end
