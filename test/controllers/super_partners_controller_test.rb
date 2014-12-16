require 'test_helper'

class SuperPartnersControllerTest < ActionController::TestCase
  setup do
    @super_partner = super_partners(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:super_partners)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create super_partner" do
    assert_difference('SuperPartner.count') do
      post :create, super_partner: { code: @super_partner.code, name: @super_partner.name }
    end

    assert_redirected_to super_partner_path(assigns(:super_partner))
  end

  test "should show super_partner" do
    get :show, id: @super_partner
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @super_partner
    assert_response :success
  end

  test "should update super_partner" do
    patch :update, id: @super_partner, super_partner: { code: @super_partner.code, name: @super_partner.name }
    assert_redirected_to super_partner_path(assigns(:super_partner))
  end

  test "should destroy super_partner" do
    assert_difference('SuperPartner.count', -1) do
      delete :destroy, id: @super_partner
    end

    assert_redirected_to super_partners_path
  end
end
