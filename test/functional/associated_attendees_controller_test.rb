require 'test_helper'

class AssociatedAttendeesControllerTest < ActionController::TestCase
  setup do
    @associated_attendee = associated_attendees(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:associated_attendees)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create associated_attendee" do
    assert_difference('AssociatedAttendee.count') do
      post :create, :associated_attendee => @associated_attendee.attributes
    end

    assert_redirected_to associated_attendee_path(assigns(:associated_attendee))
  end

  test "should show associated_attendee" do
    get :show, :id => @associated_attendee.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @associated_attendee.to_param
    assert_response :success
  end

  test "should update associated_attendee" do
    put :update, :id => @associated_attendee.to_param, :associated_attendee => @associated_attendee.attributes
    assert_redirected_to associated_attendee_path(assigns(:associated_attendee))
  end

  test "should destroy associated_attendee" do
    assert_difference('AssociatedAttendee.count', -1) do
      delete :destroy, :id => @associated_attendee.to_param
    end

    assert_redirected_to associated_attendees_path
  end
end
