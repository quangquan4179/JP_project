require 'test_helper'

class SearchPlayersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @search_player = search_players(:one)
  end

  test "should get index" do
    get search_players_url
    assert_response :success
  end

  test "should get new" do
    get new_search_player_url
    assert_response :success
  end

  test "should create search_player" do
    assert_difference('SearchPlayer.count') do
      post search_players_url, params: { search_player: { birthday: @search_player.birthday, club: @search_player.club, country: @search_player.country, max_height: @search_player.max_height, max_weight: @search_player.max_weight, min_height: @search_player.min_height, min_weight: @search_player.min_weight, player_name: @search_player.player_name } }
    end

    assert_redirected_to search_player_url(SearchPlayer.last)
  end

  test "should show search_player" do
    get search_player_url(@search_player)
    assert_response :success
  end

  test "should get edit" do
    get edit_search_player_url(@search_player)
    assert_response :success
  end

  test "should update search_player" do
    patch search_player_url(@search_player), params: { search_player: { birthday: @search_player.birthday, club: @search_player.club, country: @search_player.country, max_height: @search_player.max_height, max_weight: @search_player.max_weight, min_height: @search_player.min_height, min_weight: @search_player.min_weight, player_name: @search_player.player_name } }
    assert_redirected_to search_player_url(@search_player)
  end

  test "should destroy search_player" do
    assert_difference('SearchPlayer.count', -1) do
      delete search_player_url(@search_player)
    end

    assert_redirected_to search_players_url
  end
end
