require 'test_helper'

class SerieCommentsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @serie_comment = serie_comments(:one)
  end

  test "should get index" do
    get serie_comments_url
    assert_response :success
  end

  test "should get new" do
    get new_serie_comment_url
    assert_response :success
  end

  test "should create serie_comment" do
    assert_difference('SerieComment.count') do
      post serie_comments_url, params: { serie_comment: { content: @serie_comment.content, series_id: @serie_comment.series_id, users_id: @serie_comment.users_id } }
    end

    assert_redirected_to serie_comment_url(SerieComment.last)
  end

  test "should show serie_comment" do
    get serie_comment_url(@serie_comment)
    assert_response :success
  end

  test "should get edit" do
    get edit_serie_comment_url(@serie_comment)
    assert_response :success
  end

  test "should update serie_comment" do
    patch serie_comment_url(@serie_comment), params: { serie_comment: { content: @serie_comment.content, series_id: @serie_comment.series_id, users_id: @serie_comment.users_id } }
    assert_redirected_to serie_comment_url(@serie_comment)
  end

  test "should destroy serie_comment" do
    assert_difference('SerieComment.count', -1) do
      delete serie_comment_url(@serie_comment)
    end

    assert_redirected_to serie_comments_url
  end
end
