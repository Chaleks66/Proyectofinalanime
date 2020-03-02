require "application_system_test_case"

class SerieCommentsTest < ApplicationSystemTestCase
  setup do
    @serie_comment = serie_comments(:one)
  end

  test "visiting the index" do
    visit serie_comments_url
    assert_selector "h1", text: "Serie Comments"
  end

  test "creating a Serie comment" do
    visit serie_comments_url
    click_on "New Serie Comment"

    fill_in "Content", with: @serie_comment.content
    fill_in "Series", with: @serie_comment.series_id
    fill_in "Users", with: @serie_comment.users_id
    click_on "Create Serie comment"

    assert_text "Serie comment was successfully created"
    click_on "Back"
  end

  test "updating a Serie comment" do
    visit serie_comments_url
    click_on "Edit", match: :first

    fill_in "Content", with: @serie_comment.content
    fill_in "Series", with: @serie_comment.series_id
    fill_in "Users", with: @serie_comment.users_id
    click_on "Update Serie comment"

    assert_text "Serie comment was successfully updated"
    click_on "Back"
  end

  test "destroying a Serie comment" do
    visit serie_comments_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Serie comment was successfully destroyed"
  end
end
