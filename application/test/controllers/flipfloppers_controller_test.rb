require 'test_helper'

class FlipfloppersControllerTest < ActionController::TestCase
  setup do
    @flipflopper = flipfloppers(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:flipfloppers)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create flipflopper" do
    assert_difference('Flipflopper.count') do
      post :create, flipflopper: { birthday: @flipflopper.birthday, comment: @flipflopper.comment, drink: @flipflopper.drink, email: @flipflopper.email, name: @flipflopper.name, surname: @flipflopper.surname }
    end

    assert_redirected_to flipflopper_path(assigns(:flipflopper))
  end

  test "should show flipflopper" do
    get :show, id: @flipflopper
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @flipflopper
    assert_response :success
  end

  test "should update flipflopper" do
    patch :update, id: @flipflopper, flipflopper: { birthday: @flipflopper.birthday, comment: @flipflopper.comment, drink: @flipflopper.drink, email: @flipflopper.email, name: @flipflopper.name, surname: @flipflopper.surname }
    assert_redirected_to flipflopper_path(assigns(:flipflopper))
  end

  test "should destroy flipflopper" do
    assert_difference('Flipflopper.count', -1) do
      delete :destroy, id: @flipflopper
    end

    assert_redirected_to flipfloppers_path
  end
end
