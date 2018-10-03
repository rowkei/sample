require 'test_helper'

class ActlogsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @actlog = actlogs(:one)
  end

  test "should get index" do
    get actlogs_url
    assert_response :success
  end

  test "should get new" do
    get new_actlog_url
    assert_response :success
  end

  test "should create actlog" do
    assert_difference('Actlog.count') do
      post actlogs_url, params: { actlog: { category: @actlog.category, date: @actlog.date, time: @actlog.time } }
    end

    assert_redirected_to actlog_url(Actlog.last)
  end

  test "should show actlog" do
    get actlog_url(@actlog)
    assert_response :success
  end

  test "should get edit" do
    get edit_actlog_url(@actlog)
    assert_response :success
  end

  test "should update actlog" do
    patch actlog_url(@actlog), params: { actlog: { category: @actlog.category, date: @actlog.date, time: @actlog.time } }
    assert_redirected_to actlog_url(@actlog)
  end

  test "should destroy actlog" do
    assert_difference('Actlog.count', -1) do
      delete actlog_url(@actlog)
    end

    assert_redirected_to actlogs_url
  end
end
