require 'test_helper'

class MemoryChecksControllerTest < ActionController::TestCase
  setup do
    @memory_check = memory_checks(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:memory_checks)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create memory_check" do
    assert_difference('MemoryCheck.count') do
      post :create, memory_check: { q10: @memory_check.q10, q1: @memory_check.q1, q2: @memory_check.q2, q3: @memory_check.q3, q4: @memory_check.q4, q5: @memory_check.q5, q6: @memory_check.q6, q7: @memory_check.q7, q8: @memory_check.q8, q9: @memory_check.q9, score: @memory_check.score, user_id: @memory_check.user_id }
    end

    assert_redirected_to memory_check_path(assigns(:memory_check))
  end

  test "should show memory_check" do
    get :show, id: @memory_check
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @memory_check
    assert_response :success
  end

  test "should update memory_check" do
    patch :update, id: @memory_check, memory_check: { q10: @memory_check.q10, q1: @memory_check.q1, q2: @memory_check.q2, q3: @memory_check.q3, q4: @memory_check.q4, q5: @memory_check.q5, q6: @memory_check.q6, q7: @memory_check.q7, q8: @memory_check.q8, q9: @memory_check.q9, score: @memory_check.score, user_id: @memory_check.user_id }
    assert_redirected_to memory_check_path(assigns(:memory_check))
  end

  test "should destroy memory_check" do
    assert_difference('MemoryCheck.count', -1) do
      delete :destroy, id: @memory_check
    end

    assert_redirected_to memory_checks_path
  end
end
