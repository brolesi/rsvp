require 'test_helper'

class CustomQuestionAttendeesControllerTest < ActionController::TestCase
  setup do
    @custom_question_attendee = custom_question_attendees(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:custom_question_attendees)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create custom_question_attendee" do
    assert_difference('CustomQuestionAttendee.count') do
      post :create, :custom_question_attendee => @custom_question_attendee.attributes
    end

    assert_redirected_to custom_question_attendee_path(assigns(:custom_question_attendee))
  end

  test "should show custom_question_attendee" do
    get :show, :id => @custom_question_attendee.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @custom_question_attendee.to_param
    assert_response :success
  end

  test "should update custom_question_attendee" do
    put :update, :id => @custom_question_attendee.to_param, :custom_question_attendee => @custom_question_attendee.attributes
    assert_redirected_to custom_question_attendee_path(assigns(:custom_question_attendee))
  end

  test "should destroy custom_question_attendee" do
    assert_difference('CustomQuestionAttendee.count', -1) do
      delete :destroy, :id => @custom_question_attendee.to_param
    end

    assert_redirected_to custom_question_attendees_path
  end
end
