require 'test_helper'

class CommentReportsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @comment_report = comment_reports(:one)
  end

  test "should get index" do
    get comment_reports_url
    assert_response :success
  end

  test "should get new" do
    get new_comment_report_url
    assert_response :success
  end

  test "should create comment_report" do
    assert_difference('CommentReport.count') do
      post comment_reports_url, params: { comment_report: {  } }
    end

    assert_redirected_to comment_report_url(CommentReport.last)
  end

  test "should show comment_report" do
    get comment_report_url(@comment_report)
    assert_response :success
  end

  test "should get edit" do
    get edit_comment_report_url(@comment_report)
    assert_response :success
  end

  test "should update comment_report" do
    patch comment_report_url(@comment_report), params: { comment_report: {  } }
    assert_redirected_to comment_report_url(@comment_report)
  end

  test "should destroy comment_report" do
    assert_difference('CommentReport.count', -1) do
      delete comment_report_url(@comment_report)
    end

    assert_redirected_to comment_reports_url
  end
end
