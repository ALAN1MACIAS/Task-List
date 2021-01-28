require 'test_helper'

class TaskstoragesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @taskstorage = taskstorages(:one)
  end

  test "should get index" do
    get taskstorages_url
    assert_response :success
  end

  test "should get new" do
    get new_taskstorage_url
    assert_response :success
  end

  test "should create taskstorage" do
    assert_difference('Taskstorage.count') do
      post taskstorages_url, params: { taskstorage: { body: @taskstorage.body, title: @taskstorage.title, type: @taskstorage.type } }
    end

    assert_redirected_to taskstorage_url(Taskstorage.last)
  end

  test "should show taskstorage" do
    get taskstorage_url(@taskstorage)
    assert_response :success
  end

  test "should get edit" do
    get edit_taskstorage_url(@taskstorage)
    assert_response :success
  end

  test "should update taskstorage" do
    patch taskstorage_url(@taskstorage), params: { taskstorage: { body: @taskstorage.body, title: @taskstorage.title, type: @taskstorage.type } }
    assert_redirected_to taskstorage_url(@taskstorage)
  end

  test "should destroy taskstorage" do
    assert_difference('Taskstorage.count', -1) do
      delete taskstorage_url(@taskstorage)
    end

    assert_redirected_to taskstorages_url
  end
end
