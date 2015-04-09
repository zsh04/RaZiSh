require 'test_helper'

class RazishesControllerTest < ActionController::TestCase
  setup do
    @razish = razishes(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:razishes)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create razish" do
    assert_difference('Razish.count') do
      post :create, razish: {  }
    end

    assert_redirected_to razish_path(assigns(:razish))
  end

  test "should show razish" do
    get :show, id: @razish
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @razish
    assert_response :success
  end

  test "should update razish" do
    patch :update, id: @razish, razish: {  }
    assert_redirected_to razish_path(assigns(:razish))
  end

  test "should destroy razish" do
    assert_difference('Razish.count', -1) do
      delete :destroy, id: @razish
    end

    assert_redirected_to razishes_path
  end
end
