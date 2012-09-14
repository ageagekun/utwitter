require 'test_helper'

class UtwitsControllerTest < ActionController::TestCase
  setup do
    @utwit = utwits(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:utwits)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create utwit" do
    assert_difference('Utwit.count') do
      post :create, utwit: {  }
    end

    assert_redirected_to utwit_path(assigns(:utwit))
  end

  test "should show utwit" do
    get :show, id: @utwit
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @utwit
    assert_response :success
  end

  test "should update utwit" do
    put :update, id: @utwit, utwit: {  }
    assert_redirected_to utwit_path(assigns(:utwit))
  end

  test "should destroy utwit" do
    assert_difference('Utwit.count', -1) do
      delete :destroy, id: @utwit
    end

    assert_redirected_to utwits_path
  end
end
