require 'test_helper'

class DiscountActivitiesControllerTest < ActionController::TestCase
  setup do
    @discount_activity = discount_activities(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:discount_activities)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create discount_activity" do
    assert_difference('DiscountActivity.count') do
      post :create, discount_activity: { activity_type_id: @discount_activity.activity_type_id, date: @discount_activity.date, discount_id: @discount_activity.discount_id, time: @discount_activity.time }
    end

    assert_redirected_to discount_activity_path(assigns(:discount_activity))
  end

  test "should show discount_activity" do
    get :show, id: @discount_activity
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @discount_activity
    assert_response :success
  end

  test "should update discount_activity" do
    patch :update, id: @discount_activity, discount_activity: { activity_type_id: @discount_activity.activity_type_id, date: @discount_activity.date, discount_id: @discount_activity.discount_id, time: @discount_activity.time }
    assert_redirected_to discount_activity_path(assigns(:discount_activity))
  end

  test "should destroy discount_activity" do
    assert_difference('DiscountActivity.count', -1) do
      delete :destroy, id: @discount_activity
    end

    assert_redirected_to discount_activities_path
  end
end
