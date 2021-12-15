require "application_system_test_case"

class SearchPlayersTest < ApplicationSystemTestCase
  setup do
    @search_player = search_players(:one)
  end

  test "visiting the index" do
    visit search_players_url
    assert_selector "h1", text: "Search Players"
  end

  test "creating a Search player" do
    visit search_players_url
    click_on "New Search Player"

    fill_in "Birthday", with: @search_player.birthday
    fill_in "Club", with: @search_player.club
    fill_in "Country", with: @search_player.country
    fill_in "Max height", with: @search_player.max_height
    fill_in "Max weight", with: @search_player.max_weight
    fill_in "Min height", with: @search_player.min_height
    fill_in "Min weight", with: @search_player.min_weight
    fill_in "Player name", with: @search_player.player_name
    click_on "Create Search player"

    assert_text "Search player was successfully created"
    click_on "Back"
  end

  test "updating a Search player" do
    visit search_players_url
    click_on "Edit", match: :first

    fill_in "Birthday", with: @search_player.birthday
    fill_in "Club", with: @search_player.club
    fill_in "Country", with: @search_player.country
    fill_in "Max height", with: @search_player.max_height
    fill_in "Max weight", with: @search_player.max_weight
    fill_in "Min height", with: @search_player.min_height
    fill_in "Min weight", with: @search_player.min_weight
    fill_in "Player name", with: @search_player.player_name
    click_on "Update Search player"

    assert_text "Search player was successfully updated"
    click_on "Back"
  end

  test "destroying a Search player" do
    visit search_players_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Search player was successfully destroyed"
  end
end
