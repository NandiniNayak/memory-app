require 'test_helper'

class MemoryTestsControllerTest < ActionController::TestCase
  setup do
    @memory_test = memory_tests(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:memory_tests)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create memory_test" do
    assert_difference('MemoryTest.count') do
      post :create, memory_test: { qBirthday: @memory_test.qBirthday, qGrandchildren: @memory_test.qGrandchildren, qJob: @memory_test.qJob, qName: @memory_test.qName, qPet: @memory_test.qPet, qSchool: @memory_test.qSchool, qSuburb: @memory_test.qSuburb, score: @memory_test.score, user_id: @memory_test.user_id }
    end

    assert_redirected_to memory_test_path(assigns(:memory_test))
  end

  test "should show memory_test" do
    get :show, id: @memory_test
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @memory_test
    assert_response :success
  end

  test "should update memory_test" do
    patch :update, id: @memory_test, memory_test: { qBirthday: @memory_test.qBirthday, qGrandchildren: @memory_test.qGrandchildren, qJob: @memory_test.qJob, qName: @memory_test.qName, qPet: @memory_test.qPet, qSchool: @memory_test.qSchool, qSuburb: @memory_test.qSuburb, score: @memory_test.score, user_id: @memory_test.user_id }
    assert_redirected_to memory_test_path(assigns(:memory_test))
  end

  test "should destroy memory_test" do
    assert_difference('MemoryTest.count', -1) do
      delete :destroy, id: @memory_test
    end

    assert_redirected_to memory_tests_path
  end
end
