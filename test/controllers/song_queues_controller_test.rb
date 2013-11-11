require 'test_helper'

class SongQueuesControllerTest < ActionController::TestCase
  setup do
    @song_queue = song_queues(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:song_queues)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create song_queue" do
    assert_difference('SongQueue.count') do
      post :create, song_queue: { host_id: @song_queue.host_id, message: @song_queue.message, message_approved: @song_queue.message_approved, priority: @song_queue.priority, song_id: @song_queue.song_id, status: @song_queue.status, user_id: @song_queue.user_id }
    end

    assert_redirected_to song_queue_path(assigns(:song_queue))
  end

  test "should show song_queue" do
    get :show, id: @song_queue
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @song_queue
    assert_response :success
  end

  test "should update song_queue" do
    patch :update, id: @song_queue, song_queue: { host_id: @song_queue.host_id, message: @song_queue.message, message_approved: @song_queue.message_approved, priority: @song_queue.priority, song_id: @song_queue.song_id, status: @song_queue.status, user_id: @song_queue.user_id }
    assert_redirected_to song_queue_path(assigns(:song_queue))
  end

  test "should destroy song_queue" do
    assert_difference('SongQueue.count', -1) do
      delete :destroy, id: @song_queue
    end

    assert_redirected_to song_queues_path
  end
end
