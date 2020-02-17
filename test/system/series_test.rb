require "application_system_test_case"

class SeriesTest < ApplicationSystemTestCase
  setup do
    @series = series(:one)
  end

  test "visiting the index" do
    visit series_url
    assert_selector "h1", text: "Series"
  end

  test "creating a Serie" do
    visit series_url
    click_on "New Serie"

    fill_in "Genre", with: @series.genre
    fill_in "Img", with: @series.img
    fill_in "Name", with: @series.name
    check "Status" if @series.status
    fill_in "Year", with: @series.year
    click_on "Create Serie"

    assert_text "Serie was successfully created"
    click_on "Back"
  end

  test "updating a Serie" do
    visit series_url
    click_on "Edit", match: :first

    fill_in "Genre", with: @series.genre
    fill_in "Img", with: @series.img
    fill_in "Name", with: @series.name
    check "Status" if @series.status
    fill_in "Year", with: @series.year
    click_on "Update Serie"

    assert_text "Serie was successfully updated"
    click_on "Back"
  end

  test "destroying a Serie" do
    visit series_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Serie was successfully destroyed"
  end
end
