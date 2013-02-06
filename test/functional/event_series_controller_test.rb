require 'test_helper'

class EventSeriesControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:event_series)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create event_series" do
    assert_difference('EventSeries.count') do
      post :create, :event_series => { }
    end

    assert_redirected_to event_series_path(assigns(:event_series))
  end

  test "should show event_series" do
    get :show, :id => event_series(:one).to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => event_series(:one).to_param
    assert_response :success
  end

  test "should update event_series" do
    put :update, :id => event_series(:one).to_param, :event_series => { }
    assert_redirected_to event_series_path(assigns(:event_series))
  end

  test "should destroy event_series" do
    assert_difference('EventSeries.count', -1) do
      delete :destroy, :id => event_series(:one).to_param
    end

    assert_redirected_to event_series_path
  end
end
