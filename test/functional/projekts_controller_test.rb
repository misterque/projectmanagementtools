require 'test_helper'

class ProjektsControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:projekts)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create projekt" do
    assert_difference('Projekt.count') do
      post :create, :projekt => { }
    end

    assert_redirected_to projekt_path(assigns(:projekt))
  end

  test "should show projekt" do
    get :show, :id => projekts(:one).to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => projekts(:one).to_param
    assert_response :success
  end

  test "should update projekt" do
    put :update, :id => projekts(:one).to_param, :projekt => { }
    assert_redirected_to projekt_path(assigns(:projekt))
  end

  test "should destroy projekt" do
    assert_difference('Projekt.count', -1) do
      delete :destroy, :id => projekts(:one).to_param
    end

    assert_redirected_to projekts_path
  end
end
