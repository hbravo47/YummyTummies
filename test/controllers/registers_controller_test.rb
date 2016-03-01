require 'test_helper'

class RegistersControllerTest < ActionController::TestCase
  setup do
    @register = registers(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:registers)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create register" do
    assert_difference('Register.count') do
      post :create, register: { SSN: @register.SSN, address: @register.address, kids: @register.kids, kidsId: @register.kidsId, name: @register.name, phone: @register.phone, school: @register.school }
    end

    assert_redirected_to register_path(assigns(:register))
  end

  test "should show register" do
    get :show, id: @register
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @register
    assert_response :success
  end

  test "should update register" do
    patch :update, id: @register, register: { SSN: @register.SSN, address: @register.address, kids: @register.kids, kidsId: @register.kidsId, name: @register.name, phone: @register.phone, school: @register.school }
    assert_redirected_to register_path(assigns(:register))
  end

  test "should destroy register" do
    assert_difference('Register.count', -1) do
      delete :destroy, id: @register
    end

    assert_redirected_to registers_path
  end
end
