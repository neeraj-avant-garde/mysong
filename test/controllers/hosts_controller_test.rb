require 'test_helper'

class HostsControllerTest < ActionController::TestCase
  setup do
    @host = hosts(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:hosts)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create host" do
    assert_difference('Host.count') do
      post :create, host: { address: @host.address, area: @host.area, city: @host.city, email: @host.email, facebook: @host.facebook, guid: @host.guid, latitude: @host.latitude, longitude: @host.longitude, max_queue: @host.max_queue, max_requests: @host.max_requests, password: @host.password, proximity: @host.proximity, slogan: @host.slogan, subscription_end: @host.subscription_end, twitter: @host.twitter, verification: @host.verification }
    end

    assert_redirected_to host_path(assigns(:host))
  end

  test "should show host" do
    get :show, id: @host
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @host
    assert_response :success
  end

  test "should update host" do
    patch :update, id: @host, host: { address: @host.address, area: @host.area, city: @host.city, email: @host.email, facebook: @host.facebook, guid: @host.guid, latitude: @host.latitude, longitude: @host.longitude, max_queue: @host.max_queue, max_requests: @host.max_requests, password: @host.password, proximity: @host.proximity, slogan: @host.slogan, subscription_end: @host.subscription_end, twitter: @host.twitter, verification: @host.verification }
    assert_redirected_to host_path(assigns(:host))
  end

  test "should destroy host" do
    assert_difference('Host.count', -1) do
      delete :destroy, id: @host
    end

    assert_redirected_to hosts_path
  end
end
