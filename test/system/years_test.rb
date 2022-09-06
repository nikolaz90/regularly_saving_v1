require "application_system_test_case"

class YearsTest < ApplicationSystemTestCase
  setup do
    @year = years(:one)
  end

  test "visiting the index" do
    visit years_url
    assert_selector "h1", text: "Years"
  end

  test "should create year" do
    visit years_url
    click_on "New year"

    fill_in "April", with: @year.april
    fill_in "August", with: @year.august
    fill_in "December", with: @year.december
    fill_in "Febuary", with: @year.febuary
    fill_in "January", with: @year.january
    fill_in "July", with: @year.july
    fill_in "June", with: @year.june
    fill_in "March", with: @year.march
    fill_in "May", with: @year.may
    fill_in "Monthly target", with: @year.monthly_target
    fill_in "November", with: @year.november
    fill_in "October", with: @year.october
    fill_in "September", with: @year.september
    fill_in "User", with: @year.user_id
    fill_in "Year", with: @year.year
    click_on "Create Year"

    assert_text "Year was successfully created"
    click_on "Back"
  end

  test "should update Year" do
    visit year_url(@year)
    click_on "Edit this year", match: :first

    fill_in "April", with: @year.april
    fill_in "August", with: @year.august
    fill_in "December", with: @year.december
    fill_in "Febuary", with: @year.febuary
    fill_in "January", with: @year.january
    fill_in "July", with: @year.july
    fill_in "June", with: @year.june
    fill_in "March", with: @year.march
    fill_in "May", with: @year.may
    fill_in "Monthly target", with: @year.monthly_target
    fill_in "November", with: @year.november
    fill_in "October", with: @year.october
    fill_in "September", with: @year.september
    fill_in "User", with: @year.user_id
    fill_in "Year", with: @year.year
    click_on "Update Year"

    assert_text "Year was successfully updated"
    click_on "Back"
  end

  test "should destroy Year" do
    visit year_url(@year)
    click_on "Destroy this year", match: :first

    assert_text "Year was successfully destroyed"
  end
end
