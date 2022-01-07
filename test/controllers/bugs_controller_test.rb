require "test_helper"

class BugsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @bug = bugs(:one)
  end

  test "should get index" do
    get bugs_url
    assert_response :success
  end

  test "should get new" do
    get new_bug_url
    assert_response :success
  end

  test "should create bug" do
    assert_difference('Bug.count') do
      post bugs_url, params: { bug: { assigned_to: @bug.assigned_to, branch: @bug.branch, created_by: @bug.created_by, date_created: @bug.date_created, description: @bug.description, repro_steps: @bug.repro_steps, severity: @bug.severity, status: @bug.status, title: @bug.title } }
    end

    assert_redirected_to bug_url(Bug.last)
  end

  test "should show bug" do
    get bug_url(@bug)
    assert_response :success
  end

  test "should get edit" do
    get edit_bug_url(@bug)
    assert_response :success
  end

  test "should update bug" do
    patch bug_url(@bug), params: { bug: { assigned_to: @bug.assigned_to, branch: @bug.branch, created_by: @bug.created_by, date_created: @bug.date_created, description: @bug.description, repro_steps: @bug.repro_steps, severity: @bug.severity, status: @bug.status, title: @bug.title } }
    assert_redirected_to bug_url(@bug)
  end

  test "should destroy bug" do
    assert_difference('Bug.count', -1) do
      delete bug_url(@bug)
    end

    assert_redirected_to bugs_url
  end
end
