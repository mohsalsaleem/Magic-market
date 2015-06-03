require 'test_helper'

class DeliveryAddressesControllerTest < ActionController::TestCase
  setup do
    @delivery_address = delivery_addresses(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:delivery_addresses)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create delivery_address" do
    assert_difference('DeliveryAddress.count') do
      post :create, delivery_address: { address: @delivery_address.address, city: @delivery_address.city, name: @delivery_address.name, phoneno: @delivery_address.phoneno, pincode: @delivery_address.pincode, state: @delivery_address.state, user_id: @delivery_address.user_id }
    end

    assert_redirected_to delivery_address_path(assigns(:delivery_address))
  end

  test "should show delivery_address" do
    get :show, id: @delivery_address
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @delivery_address
    assert_response :success
  end

  test "should update delivery_address" do
    patch :update, id: @delivery_address, delivery_address: { address: @delivery_address.address, city: @delivery_address.city, name: @delivery_address.name, phoneno: @delivery_address.phoneno, pincode: @delivery_address.pincode, state: @delivery_address.state, user_id: @delivery_address.user_id }
    assert_redirected_to delivery_address_path(assigns(:delivery_address))
  end

  test "should destroy delivery_address" do
    assert_difference('DeliveryAddress.count', -1) do
      delete :destroy, id: @delivery_address
    end

    assert_redirected_to delivery_addresses_path
  end
end
