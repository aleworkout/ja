require 'test_helper'

class PublicationActivitiesControllerTest < ActionController::TestCase
  setup do
    @publication_activity = publication_activities(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:publication_activities)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create publication_activity" do
    assert_difference('PublicationActivity.count') do
      post :create, publication_activity: { activity_type_id: @publication_activity.activity_type_id, date: @publication_activity.date, publication_id: @publication_activity.publication_id, time: @publication_activity.time }
    end

    assert_redirected_to publication_activity_path(assigns(:publication_activity))
  end

  test "should show publication_activity" do
    get :show, id: @publication_activity
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @publication_activity
    assert_response :success
  end

  test "should update publication_activity" do
    patch :update, id: @publication_activity, publication_activity: { activity_type_id: @publication_activity.activity_type_id, date: @publication_activity.date, publication_id: @publication_activity.publication_id, time: @publication_activity.time }
    assert_redirected_to publication_activity_path(assigns(:publication_activity))
  end

  test "should destroy publication_activity" do
    assert_difference('PublicationActivity.count', -1) do
      delete :destroy, id: @publication_activity
    end

    assert_redirected_to publication_activities_path
  end
end
