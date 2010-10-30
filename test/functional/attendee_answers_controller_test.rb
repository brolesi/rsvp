require 'test_helper'

class AttendeeAnswersControllerTest < ActionController::TestCase
  setup do
    @attendee_answer = attendee_answers(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:attendee_answers)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create attendee_answer" do
    assert_difference('AttendeeAnswer.count') do
      post :create, :attendee_answer => @attendee_answer.attributes
    end

    assert_redirected_to attendee_answer_path(assigns(:attendee_answer))
  end

  test "should show attendee_answer" do
    get :show, :id => @attendee_answer.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @attendee_answer.to_param
    assert_response :success
  end

  test "should update attendee_answer" do
    put :update, :id => @attendee_answer.to_param, :attendee_answer => @attendee_answer.attributes
    assert_redirected_to attendee_answer_path(assigns(:attendee_answer))
  end

  test "should destroy attendee_answer" do
    assert_difference('AttendeeAnswer.count', -1) do
      delete :destroy, :id => @attendee_answer.to_param
    end

    assert_redirected_to attendee_answers_path
  end
end
