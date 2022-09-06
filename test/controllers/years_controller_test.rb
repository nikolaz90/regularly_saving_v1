require "test_helper"

class YearsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @year = years(:one)
  end

  test "should get index" do
    get years_url
    assert_response :success
  end

  test "should get new" do
    get new_year_url
    assert_response :success
  end

  test "should create year" do
    assert_difference("Year.count") do
      post years_url, params: { year: { april: @year.april, august: @year.august, december: @year.december, febuary: @year.febuary, january: @year.january, july: @year.july, june: @year.june, march: @year.march, may: @year.may, monthly_target: @year.monthly_target, november: @year.november, october: @year.october, september: @year.september, user_id: @year.user_id, year: @year.year } }
    end

    assert_redirected_to year_url(Year.last)
  end

  test "should show year" do
    get year_url(@year)
    assert_response :success
  end

  test "should get edit" do
    get edit_year_url(@year)
    assert_response :success
  end

  test "should update year" do
    patch year_url(@year), params: { year: { april: @year.april, august: @year.august, december: @year.december, febuary: @year.febuary, january: @year.january, july: @year.july, june: @year.june, march: @year.march, may: @year.may, monthly_target: @year.monthly_target, november: @year.november, october: @year.october, september: @year.september, user_id: @year.user_id, year: @year.year } }
    assert_redirected_to year_url(@year)
  end

  test "should destroy year" do
    assert_difference("Year.count", -1) do
      delete year_url(@year)
    end

    assert_redirected_to years_url
  end
end
