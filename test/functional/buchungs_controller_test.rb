require 'test_helper'

class BuchungsControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:buchungs)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create buchung" do
    assert_difference('Buchung.count') do
      post :create, :buchung => { }
    end

    assert_redirected_to buchung_path(assigns(:buchung))
  end

  test "should show buchung" do
    get :show, :id => buchungs(:one).to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => buchungs(:one).to_param
    assert_response :success
  end

  test "should update buchung" do
    put :update, :id => buchungs(:one).to_param, :buchung => { }
    assert_redirected_to buchung_path(assigns(:buchung))
  end

  test "should destroy buchung" do
    assert_difference('Buchung.count', -1) do
      delete :destroy, :id => buchungs(:one).to_param
    end

    assert_redirected_to buchungs_path
  end
end
