require 'test_helper'

class CustomQuestionAnswersControllerTest < ActionController::TestCase
  setup do
    @custom_question_answer = custom_question_answers(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:custom_question_answers)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create custom_question_answer" do
    assert_difference('CustomQuestionAnswer.count') do
      post :create, :custom_question_answer => @custom_question_answer.attributes
    end

    assert_redirected_to custom_question_answer_path(assigns(:custom_question_answer))
  end

  test "should show custom_question_answer" do
    get :show, :id => @custom_question_answer.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @custom_question_answer.to_param
    assert_response :success
  end

  test "should update custom_question_answer" do
    put :update, :id => @custom_question_answer.to_param, :custom_question_answer => @custom_question_answer.attributes
    assert_redirected_to custom_question_answer_path(assigns(:custom_question_answer))
  end

  test "should destroy custom_question_answer" do
    assert_difference('CustomQuestionAnswer.count', -1) do
      delete :destroy, :id => @custom_question_answer.to_param
    end

    assert_redirected_to custom_question_answers_path
  end
end
