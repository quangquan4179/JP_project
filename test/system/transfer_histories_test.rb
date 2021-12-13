require "application_system_test_case"

class TransferHistoriesTest < ApplicationSystemTestCase
  setup do
    @transfer_history = transfer_histories(:one)
  end

  test "visiting the index" do
    visit transfer_histories_url
    assert_selector "h1", text: "Transfer Histories"
  end

  test "creating a Transfer history" do
    visit transfer_histories_url
    click_on "New Transfer History"

    fill_in "Day", with: @transfer_history.day
    fill_in "New club", with: @transfer_history.new_club
    fill_in "Note", with: @transfer_history.note
    fill_in "Old club", with: @transfer_history.old_club
    fill_in "Player", with: @transfer_history.player_id
    fill_in "User", with: @transfer_history.user_id
    click_on "Create Transfer history"

    assert_text "Transfer history was successfully created"
    click_on "Back"
  end

  test "updating a Transfer history" do
    visit transfer_histories_url
    click_on "Edit", match: :first

    fill_in "Day", with: @transfer_history.day
    fill_in "New club", with: @transfer_history.new_club
    fill_in "Note", with: @transfer_history.note
    fill_in "Old club", with: @transfer_history.old_club
    fill_in "Player", with: @transfer_history.player_id
    fill_in "User", with: @transfer_history.user_id
    click_on "Update Transfer history"

    assert_text "Transfer history was successfully updated"
    click_on "Back"
  end

  test "destroying a Transfer history" do
    visit transfer_histories_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Transfer history was successfully destroyed"
  end
end
