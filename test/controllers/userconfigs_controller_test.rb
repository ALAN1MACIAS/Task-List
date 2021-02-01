require 'test_helper'

class UserconfigsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @userconfig = userconfigs(:one)
  end

  test "should get index" do
    get userconfigs_url
    assert_response :success
  end

  test "should get new" do
    get new_userconfig_url
    assert_response :success
  end

  test "should create userconfig" do
    assert_difference('Userconfig.count') do
      post userconfigs_url, params: { userconfig: { apellidom: @userconfig.apellidom, apellidop: @userconfig.apellidop, descripcion: @userconfig.descripcion, nombre: @userconfig.nombre } }
    end

    assert_redirected_to userconfig_url(Userconfig.last)
  end

  test "should show userconfig" do
    get userconfig_url(@userconfig)
    assert_response :success
  end

  test "should get edit" do
    get edit_userconfig_url(@userconfig)
    assert_response :success
  end

  test "should update userconfig" do
    patch userconfig_url(@userconfig), params: { userconfig: { apellidom: @userconfig.apellidom, apellidop: @userconfig.apellidop, descripcion: @userconfig.descripcion, nombre: @userconfig.nombre } }
    assert_redirected_to userconfig_url(@userconfig)
  end

  test "should destroy userconfig" do
    assert_difference('Userconfig.count', -1) do
      delete userconfig_url(@userconfig)
    end

    assert_redirected_to userconfigs_url
  end
end
