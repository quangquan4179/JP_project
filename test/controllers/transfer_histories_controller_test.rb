require 'test_helper'

class TransferHistoriesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @transfer_history = transfer_histories(:one)
  end

  test "should get index" do
    get transfer_histories_url
    assert_response :success
  end

  test "should get new" do
    get new_transfer_history_url
    assert_response :success
  end

  test "should create transfer_history" do
    assert_difference('TransferHistory.count') do
      post transfer_histories_url, params: { transfer_history: { day: @transfer_history.day, new_club: @transfer_history.new_club, note: @transfer_history.note, old_club: @transfer_history.old_club, player_id: @transfer_history.player_id, user_id: @transfer_history.user_id } }
    end

    assert_redirected_to transfer_history_url(TransferHistory.last)
  end

  test "should show transfer_history" do
    get transfer_history_url(@transfer_history)
    assert_response :success
  end

  test "should get edit" do
    get edit_transfer_history_url(@transfer_history)
    assert_response :success
  end

  test "should update transfer_history" do
    patch transfer_history_url(@transfer_history), params: { transfer_history: { day: @transfer_history.day, new_club: @transfer_history.new_club, note: @transfer_history.note, old_club: @transfer_history.old_club, player_id: @transfer_history.player_id, user_id: @transfer_history.user_id } }
    assert_redirected_to transfer_history_url(@transfer_history)
  end

  test "should destroy transfer_history" do
    assert_difference('TransferHistory.count', -1) do
      delete transfer_history_url(@transfer_history)
    end

    assert_redirected_to transfer_histories_url
  end
end
