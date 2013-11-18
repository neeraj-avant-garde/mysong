require 'test_helper'

class HostSessionsControllerTest < ActionController::TestCase
  setup do
    @host_session = host_sessions(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:host_sessions)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create host_session" do
    assert_difference('HostSession.count') do
      post :create, host_session: { host_id: @host_session.host_id, host_session_id: @host_session.host_session_id, is_active: @host_session.is_active }
    end

    assert_redirected_to host_session_path(assigns(:host_session))
  end

  test "should show host_session" do
    get :show, id: @host_session
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @host_session
    assert_response :success
  end

  test "should update host_session" do
    patch :update, id: @host_session, host_session: { host_id: @host_session.host_id, host_session_id: @host_session.host_session_id, is_active: @host_session.is_active }
    assert_redirected_to host_session_path(assigns(:host_session))
  end

  test "should destroy host_session" do
    assert_difference('HostSession.count', -1) do
      delete :destroy, id: @host_session
    end

    assert_redirected_to host_sessions_path
  end
end
