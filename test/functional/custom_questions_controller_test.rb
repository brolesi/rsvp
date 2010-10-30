require 'test_helper'

class CustomQuestionsControllerTest < ActionController::TestCase
  setup do
    @custom_question = custom_questions(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:custom_questions)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create custom_question" do
    assert_difference('CustomQuestion.count') do
      post :create, :custom_question => @custom_question.attributes
    end

    assert_redirected_to custom_question_path(assigns(:custom_question))
  end

  test "should show custom_question" do
    get :show, :id => @custom_question.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @custom_question.to_param
    assert_response :success
  end

  test "should update custom_question" do
    put :update, :id => @custom_question.to_param, :custom_question => @custom_question.attributes
    assert_redirected_to custom_question_path(assigns(:custom_question))
  end

  test "should destroy custom_question" do
    assert_difference('CustomQuestion.count', -1) do
      delete :destroy, :id => @custom_question.to_param
    end

    assert_redirected_to custom_questions_path
  end
end
