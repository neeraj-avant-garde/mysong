require 'test_helper'

class SongQueueUsersControllerTest < ActionController::TestCase
  setup do
    @song_queue_user = song_queue_users(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:song_queue_users)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create song_queue_user" do
    assert_difference('SongQueueUser.count') do
      post :create, song_queue_user: { dislike: @song_queue_user.dislike, like: @song_queue_user.like, song_queue_id: @song_queue_user.song_queue_id, user_id: @song_queue_user.user_id }
    end

    assert_redirected_to song_queue_user_path(assigns(:song_queue_user))
  end

  test "should show song_queue_user" do
    get :show, id: @song_queue_user
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @song_queue_user
    assert_response :success
  end

  test "should update song_queue_user" do
    patch :update, id: @song_queue_user, song_queue_user: { dislike: @song_queue_user.dislike, like: @song_queue_user.like, song_queue_id: @song_queue_user.song_queue_id, user_id: @song_queue_user.user_id }
    assert_redirected_to song_queue_user_path(assigns(:song_queue_user))
  end

  test "should destroy song_queue_user" do
    assert_difference('SongQueueUser.count', -1) do
      delete :destroy, id: @song_queue_user
    end

    assert_redirected_to song_queue_users_path
  end
end
