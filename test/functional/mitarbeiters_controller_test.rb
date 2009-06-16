require 'test_helper'

class MitarbeitersControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:mitarbeiters)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create mitarbeiter" do
    assert_difference('Mitarbeiter.count') do
      post :create, :mitarbeiter => { }
    end

    assert_redirected_to mitarbeiter_path(assigns(:mitarbeiter))
  end

  test "should show mitarbeiter" do
    get :show, :id => mitarbeiters(:one).to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => mitarbeiters(:one).to_param
    assert_response :success
  end

  test "should update mitarbeiter" do
    put :update, :id => mitarbeiters(:one).to_param, :mitarbeiter => { }
    assert_redirected_to mitarbeiter_path(assigns(:mitarbeiter))
  end

  test "should destroy mitarbeiter" do
    assert_difference('Mitarbeiter.count', -1) do
      delete :destroy, :id => mitarbeiters(:one).to_param
    end

    assert_redirected_to mitarbeiters_path
  end
end
